#ifndef PAGELIST_H
#define PAGELIST_H

#include <QObject>
#include <QStringList>
class PageList : public QObject
{
    Q_OBJECT
    QStringList pageid;
public:
    explicit PageList(QObject *parent = nullptr);

signals:
public slots:
    int getLength();
    QString getListEle(int);
    QStringList getStrList();
};

#endif // PAGELIST_H
