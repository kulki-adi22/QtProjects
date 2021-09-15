#ifndef PAGELIST_H
#define PAGELIST_H
#include<QFile>
#include<QTextStream>
#include <QObject>
#include <QStringList>
class PageList : public QObject
{
    Q_OBJECT
    int count;
    QStringList pageid;
public:
    explicit PageList(QObject *parent = nullptr);
    void fileip();
    void filemanip();
signals:
public slots:
    int getLength();
    QString getListEle(int);
    QStringList getStrList();
    int nextButton(int);
    int prevButton(int);
};

#endif // PAGELIST_H
