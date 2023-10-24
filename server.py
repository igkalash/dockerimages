from twisted.internet import reactor
from twisted.internet.interfaces import IAddress
from twisted.internet.protocol import Protocol
from twisted.internet.protocol import ServerFactory as ServFact
from twisted.internet.endpoints import TCP4ServerEndpoint

class Server(Protocol):
    
    def connectionMade(self):
        print('new connection')
        self.transport.write('hello'.encode('utf-8'))
        self.transport.loseConnection()
        
    
class ServerFactory(ServFact):
    def buildProtocol(self, addr):
        return Server()
    
if __name__ == '__main__':
    endpoint = TCP4ServerEndpoint(reactor, 2000)
    endpoint.listen(ServerFactory())
reactor.run() 
