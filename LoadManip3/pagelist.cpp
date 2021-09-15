#include "pagelist.h"
#include <QDebug>
#include <QChar>
PageList::PageList(QObject *parent) : QObject(parent)
{
    //    pageid ={"Page2.qml","Page3.qml","Page1.qml","Page4.qml","Page6.qml","Page5.qml","Page10.qml","Page7.qml","Page8.qml","Page9.qml"};
    count=0;
    qDebug()<<"Inside Constructor";
    this->fileip();
}

void PageList::fileip()
{
    int i=0;
    qDebug()<<"Inside fileip function";
    QFile file("/home/adityak/QtProjects/LoaderManip/FileNames");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
        qDebug()<<"Not read";
        return;
    }
    else
        qDebug()<<"Going to read";
    QTextStream in(&file);
    QString line = in.readLine();
    while (!line.isNull()) {
        qDebug()<<line;
        line=in.readLine();
    }
    this->filemanip();
    //    line=in.readAll();
    //    QChar ch=line[0];
    //    QString str;
    //    int j=0;
    //    while(ch.isNull())
    //    {
    //        ch=line[i++];
    //        if(ch!=',')
    //        {
    //            str[j++]=ch;
    //        }
    //        else
    //        {
    //            j=0;
    //            pageid[i++]=str;
    //        }
    //        if(ch=='\0')
    //            break;
    //    }
}

void PageList::filemanip()
{
    QString text;
    QFile file("/home/adityak/QtProjects/LoaderManip/FileNames");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
        qDebug()<<"Not read";
        return;
    }
    else
        qDebug()<<"Going to read";
    QTextStream in(&file);
    text=in.readAll();
    qDebug()<<text;
    QChar ch;
    ch=text[0];
    qDebug()<<ch;
    int i=1;
    QString fname;
    int j=0,k=0;
    qDebug()<<"Test1";
    while(1)
    {
        qDebug()<<ch;
        qDebug()<<k++<<" Test2";
        if(ch==',')
        {
            pageid.append(fname);
            fname=NULL;
            qDebug()<<pageid;
            j=0;
            k=0;
        }
        if(ch!=','&&ch!='\0'&&ch!='\n')
        {
            qDebug()<<"Test2.1";
            fname=fname+ch;
            //            qDebug()<<fname;
            j++;
            qDebug()<<"Test2.2";
        }
        qDebug()<<"Test3";
        qDebug()<<ch;
        if(ch=='\xa'||ch=='\n'){
            pageid.append(fname);
            break;
        }
        qDebug()<<"Test4";
        ch=text[i];
        //        qDebug()<<ch;
        i++;

    }
    qDebug()<<"Test5";
    qDebug()<<pageid;
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

int PageList::nextButton(int value)
{
    if(value==pageid.size()-1)
        count=0;
    else
        count++;
    return count;
}

int PageList::prevButton(int value)
{
    if(value==0)
        count=pageid.size()-1;
    else
        count--;
    return count;
}


