#include <zmq.hpp>
#include "message.pb.h"
#include <iostream>
#include <string>
#include <csignal>

using namespace mypackage;

bool running = true;

void handle_sigint(int) {
    running = false;
}



Status parseStatusFromInput(const std::string& input) {
    if (input == "OK") return Status::OK;
    if (input == "ERROR") return Status::ERROR;
    if (input == "TIMEOUT") return Status::TIMEOUT;
    return Status::UNKNOWN;
}

void printStatusOptions() {
    std::cout << "Select status:\n"
              << "  OK\n"
              << "  ERROR\n"
              << "  TIMEOUT\n"
              << "Type your choice: ";
}

int main() {
    GOOGLE_PROTOBUF_VERIFY_VERSION;
    signal(SIGINT, handle_sigint);

    zmq::context_t context(1);
    zmq::socket_t socket(context, zmq::socket_type::pub);
    socket.bind("tcp://*:5555");

    while (running) {
        MyMessage msg;
        int id;
        std::string text;
        std::string status_input;

        std::cout << "Enter ID: ";
        std::cin >> id;
        std::cin.ignore(); // flush newline
        msg.set_id(id);

        std::cout << "Enter text: ";
        std::getline(std::cin, text);
        msg.set_text(text);

        printStatusOptions();
        std::getline(std::cin, status_input);
        msg.set_status(parseStatusFromInput(status_input));

        std::string serialized;
        msg.SerializeToString(&serialized);

        zmq::message_t zmq_msg(serialized.begin(), serialized.end());
        socket.send(zmq_msg, zmq::send_flags::none);

        std::cout << "[Sent] ID: " << id << ", Text: " << text << ", Status: " << Status_Name(msg.status()) << "\n\n";
    }

    google::protobuf::ShutdownProtobufLibrary();
    return 0;
}

