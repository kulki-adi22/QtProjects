#include "pagelist.h"
#include <QDebug>
PageList::PageList(QObject *parent) : QObject(parent)
{
    pageid ={"Page2.qml","Page3.qml","Page1.qml","Page4.qml","Page6.qml","Page5.qml","Page10.qml","Page7.qml","Page8.qml","Page9.qml"};
}

int PageList::getLength()
{
    qDebug()<<"Inside getLength"<<Qt::endl;
    return pageid.size();
}

QString PageList::getListEle(int index)
{
    qDebug()<<"Inside getListEle "<<Qt::endl;
    return pageid[index];
}

QStringList PageList::getStrList()
{
    qDebug()<<"Inside getStrList "<<Qt::endl;
    return pageid;
}
