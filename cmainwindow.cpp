#include "cmainwindow.h"
#include "ui_cmainwindow.h"

#include "cmediainfo.h"


cMainWindow::cMainWindow(QWidget *parent) :
	QMainWindow(parent),
	ui(new Ui::cMainWindow)
{
	ui->setupUi(this);

	cMediaInfo*	lpMediaInfo	= new cMediaInfo;
	lpMediaInfo->importFromFile("C:/Users/vet0572/Music/Amy MacDonald/Under Stars (Deluxe)/01 - Dream On.mp3");
	delete lpMediaInfo;
}

cMainWindow::~cMainWindow()
{
	delete ui;
}
