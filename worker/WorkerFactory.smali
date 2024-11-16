.class public Lcom/chlegou/bitbot/worker/WorkerFactory;
.super Ljava/lang/Object;
.source "WorkerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WorkerFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startBackgroundWorkers()V
    .locals 2

    .line 11
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chlegou/bitbot/utils/PermissionUtils;->isOverlayPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/chlegou/bitbot/worker/WorkerFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "starting background workers."

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/chlegou/bitbot/worker/AdflyWorker;->schedulePeriodicWorkerIfNotPresent()V

    .line 16
    invoke-static {}, Lcom/chlegou/bitbot/worker/DirectLinkWorker;->schedulePeriodicWorkerIfNotPresent()V

    return-void
.end method
