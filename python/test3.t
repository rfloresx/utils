${BEGIN h}
/*
 * Copyright (c) 2015-2016, Remuv Technologies Inc. All Rights Reserved.
 * 1415 North Loop West, Suite 612, Houston TX 77008
 * http://www.remuv.io  tel:713.485.4519
 *
 * The copyright holders make no representations about the suitability of
 * this software for any purpose.  It is provided "as is" without express
 * or implied warranty.  The copyright holders will not be liable for any
 * direct, indirect, special, or consequential damages arising out of any
 * use of the software or documentation.
 *
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */

#ifndef ${GUARD}
#define ${GUARD}

#include "${MODEL_INCLUDE}"
#include "dds_reader.h"

using namespace dds;

typedef TDdsReader<${DataType}> ${CName}Reader;
class ${CName}Subscriber : public ${CName}Reader
{
protected:
    virtual void NewDataAvailable(Sample sample);
    virtual void InstanceNotAliveUpdate();

public:
    bool Initialize();

    ${CName}Subscriber();
    ~${CName}Subscriber();

};
#endif




${END h}



${BEGIN cpp}

${include h}

const std::string TOPIC_NAME = "${TOPIC_NAME}";
const std::string TOPIC_NAME = "${TOPIC_NAME}";
const std::string QOS_PROFILE = "${QOS_PROFILE}";
const std::string QOS_PARTICIPANT = "${QOS_PARTICIPANT}";
const std::string QOS_SUBSCRIBER = "${QOS_SUBSCRIBER}";
const std::string QOS_TOPIC = "${QOS_TOPIC}";
const std::string QOS_READER = "${QOS_READER}";

void ${CName}Subscriber::NewDataAvailable(Sample sample)
{
}

void ${CName}Subscriber::InstanceNotAliveUpdate()
{
}

bool ${CName}Subscriber::Initialize()
{
    bool retVal = false;

    retVal = ReaderInitialize();

    return retVal;
}

${CName}Subscriber::~${CName}Subscriber()
{

}

${CName}Subscriber::${CName}Subscriber()  :
    ${CName}Reader(TOPIC_NAME,
                     QOS_PROFILE,
                     QOS_PARTICIPANT,
                     QOS_SUBSCRIBER,
                     QOS_TOPIC,
                     QOS_READER)
{

}

${END cpp}
