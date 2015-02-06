#include <glog/logging.h>
#include <folly/SocketAddress.h>
//#include <folly/io/async/TimeoutManager.h>
#include <proxygen/lib/http/HTTPConnector.h>
#include <proxygen/lib/http/session/HTTPUpstreamSession.h>
#include <proxygen/lib/utils/AsyncTimeoutSet.h>

class MyCallback : public proxygen::HTTPConnector::Callback
{
public:
  virtual void connectSuccess(proxygen::HTTPUpstreamSession* session)
  {
    LOG(INFO) << "MyCallback::connectSuccess";
  }

  virtual void connectError(
    const apache::thrift::transport::TTransportException& ex)
  {
    LOG(INFO) << "MyCallback::connectError";
  }
};

int main()
{
  LOG(INFO) << "main";

  folly::EventBase evb;

  proxygen::AsyncTimeoutSet::UniquePtr atos(
    new proxygen::AsyncTimeoutSet(&evb, std::chrono::milliseconds(500)));

  MyCallback mc;
  proxygen::HTTPConnector connector(&mc, atos.get());

  folly::SocketAddress sa("127.0.0.1", 80, false);
  connector.connect(&evb, sa);

  evb.loopForever();
}
