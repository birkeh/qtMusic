#include "cmainwindow.h"
#include "ui_cmainwindow.h"

#include "cmediainfo.h"

#include <QDir>
#include <QTime>
#include <QDebug>


void cMainWindow::addFile(const QString& szFile)
{
	if(szFile.isEmpty())
		return;

	cMediaInfo*	lpMediaInfo	= new cMediaInfo;
	lpMediaInfo->importFromFile(szFile);
	delete lpMediaInfo;

/*
	cMediaInfo*	lpMediaInfo     = new cMediaInfo;
	lpMediaInfo->readFromFile(szFile);
	if(lpMediaInfo->isValid())
	{
		m_lpDB->getDB().transaction();
		lpMediaInfo->writeToDB();
		m_lpDB->getDB().commit();
	}
	delete lpMediaInfo;
*/
}

void cMainWindow::addPath(const QString& szPath)
{
	QDir		Dir(szPath);
	QStringList	Dirs	= Dir.entryList(QDir::Dirs);
	QStringList	Files	= Dir.entryList(QDir::Files);
	int			z;

	if(!Files.isEmpty())
	{
		for(z = 0;z < Files.count();z++)
			addFile(szPath + QString("/") + Files.at(z));
	}

	Dirs.removeAll(".");
	Dirs.removeAll((".."));

	if(!Dirs.isEmpty())
	{
		for(z = 0;z < Dirs.count();z++)
			addPath(szPath + QString("/") + Dirs.at(z));
	}
}

cMainWindow::cMainWindow(QWidget *parent) :
	QMainWindow(parent),
	ui(new Ui::cMainWindow)
{
	ui->setupUi(this);

	QTime	time;
	time.start();
//	addPath("C:/Users/birkeh/Music");
	addPath("C:/Users/vet0572/Music");
	qDebug() << time.elapsed();
//	addPath("C:/Users/birkeh/Music");
//	addFile("C:/Users/vet0572/Music/Amy MacDonald/Under Stars (Deluxe)/01 - Dream On.mp3");
}

cMainWindow::~cMainWindow()
{
	delete ui;
}
