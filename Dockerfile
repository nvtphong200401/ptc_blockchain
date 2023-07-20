FROM node

RUN mkdir /naivecoin
ADD package.json /naivecoin/
RUN cd /naivecoin && npm install

ADD tsconfig.json /naivecoin/
ADD tslint.json /naivecoin/
ADD src /naivecoin/src
ADD node /naivecoin/node


EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /naivecoin && npm install && PEERS=$PEERS npm start
