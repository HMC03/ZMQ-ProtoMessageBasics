#include <zmq.hpp>
#include "message.pb.h"
#include <iostream>

using namespace mypackage;

int main() {
    GOOGLE_PROTOBUF_VERIFY_VERSION;

    zmq::context_t context(1);
    zmq::socket_t socket(context, zmq::socket_type::sub);
    socket.connect("tcp://localhost:5555");
    socket.set(zmq::sockopt::subscribe, "");

    while (true) {
        zmq::message_t zmq_msg;
        socket.recv(zmq_msg, zmq::recv_flags::none);

        MyMessage msg;
        msg.ParseFromArray(zmq_msg.data(), zmq_msg.size());

        std::cout << "[Received] ID: " << msg.id()
                  << ", Text: " << msg.text()
                  << ", Status: " << Status_Name(msg.status())
                  << "\n";
    }

    google::protobuf::ShutdownProtobufLibrary();
    return 0;
}

