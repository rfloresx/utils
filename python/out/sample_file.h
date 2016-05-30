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

typedef TDdsReader<Corto::Data> CCortoDataReader;
class CCortoDataSubscriber : public CCortoDataReader
{
protected:
    virtual void NewDataAvailable(Sample sample);
    virtual void InstanceNotAliveUpdate();

public:
    bool Initialize();

    CCortoDataSubscriber();
    ~CCortoDataSubscriber();

};
#endif




