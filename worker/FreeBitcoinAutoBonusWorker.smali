.class public Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;
.super Landroidx/work/Worker;
.source "FreeBitcoinAutoBonusWorker.java"


# static fields
.field public static final FREEBITCOIN_ACCOUNT_ID:Ljava/lang/String; = "FREEBITCOIN_ACCOUNT_ID"

.field public static final FREEBITCOIN_ACTION_TYPE:Ljava/lang/String; = "FREEBITCOIN_ACTION_TYPE"

.field public static final FREEBITCOIN_ACTION_TYPE_MANUAL:Ljava/lang/String; = "MC"

.field public static final FREEBITCOIN_ACTION_TYPE_SERVER_NOTIFICATION:Ljava/lang/String; = "SN"

.field public static final FREEBITCOIN_ACTION_TYPE_STANDALONE_APP:Ljava/lang/String; = "SAP"

.field public static final FREEBITCOIN_AUTO_BONUS:Ljava/lang/String; = "FREEBITCOIN_AUTO_BONUS"

.field private static final FREEBITCOIN_AUTO_BONUS_ID:Ljava/lang/String; = "FREEBITCOIN_AUTO_BONUS_ID"

.field private static final FREEBITCOIN_AUTO_BONUS_WORKER_LOG:Ljava/lang/String; = "FREEBITCOIN_AUTO_BONUS_WORKER_LOG"

.field private static final TAG:Ljava/lang/String; = "FreeBitcoinAutoBonusWorker"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static buildExactAfterSomeDelayInSeconds(JLandroidx/work/Data;)Landroidx/work/OneTimeWorkRequest;
    .locals 3

    .line 147
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduling after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FREEBITCOIN_ACCOUNT_ID"

    .line 149
    invoke-virtual {p2, v0}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/Tools;->getStringWithDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v2, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;

    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 153
    invoke-virtual {v1, p2}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p2

    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 154
    invoke-virtual {p2, p0, p1, v1}, Landroidx/work/OneTimeWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-string p1, "FREEBITCOIN_AUTO_BONUS"

    .line 155
    invoke-virtual {p0, p1}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 156
    invoke-virtual {p0, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    sget-object p1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    .line 157
    invoke-virtual {p0, p1, v0, v1, p2}, Landroidx/work/OneTimeWorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 158
    invoke-virtual {p0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest;

    return-object p0
.end method

.method private static buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FREEBITCOIN_AUTO_BONUS_ID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cancelWorkerByAccountId(Ljava/lang/String;)V
    .locals 3

    .line 166
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canceling for account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :try_start_0
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    invoke-static {p0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    move-result-object p0

    invoke-interface {p0}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getLastWorkingTimeForAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 194
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting LastWorkingTime for account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {p0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "FREEBITCOIN_AUTO_BONUS_WORKER_LOG"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/chlegou/bitbot/utils/PreferencesUtils;->getFromPreferencesGroupByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastWorkingTime ::  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static isWorkerRunningForAccount(Ljava/lang/String;)Z
    .locals 4

    .line 175
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checking if running for account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 178
    :try_start_0
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v2

    invoke-static {p0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/work/WorkManager;->getWorkInfosByTag(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "workInfoList :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/WorkInfo;

    .line 181
    invoke-virtual {v0}, Landroidx/work/WorkInfo;->getState()Landroidx/work/WorkInfo$State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    :cond_1
    :goto_0
    sget-object p0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWorkerRunning :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static scheduleExactAfterSomeDelayInSeconds(JLandroidx/work/Data;)V
    .locals 0

    .line 134
    invoke-static {p0, p1, p2}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->buildExactAfterSomeDelayInSeconds(JLandroidx/work/Data;)Landroidx/work/OneTimeWorkRequest;

    move-result-object p0

    .line 137
    :try_start_0
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    .line 138
    invoke-virtual {p1, p0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    move-result-object p0

    invoke-interface {p0}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static schedulePeriodicWorker(Landroidx/work/Data;)V
    .locals 10

    .line 115
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->TAG:Ljava/lang/String;

    const-string v1, "scheduling periodic."

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FREEBITCOIN_ACCOUNT_ID"

    .line 117
    invoke-virtual {p0, v0}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/Tools;->getStringWithDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v9, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v2, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    const-wide/16 v6, 0xf

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    .line 121
    invoke-virtual {v9, p0}, Landroidx/work/PeriodicWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest$Builder;

    const-string v1, "FREEBITCOIN_AUTO_BONUS"

    .line 122
    invoke-virtual {p0, v1}, Landroidx/work/PeriodicWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 123
    invoke-virtual {p0, v0}, Landroidx/work/PeriodicWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest$Builder;

    sget-object v1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 124
    invoke-virtual {p0, v1, v3, v4, v2}, Landroidx/work/PeriodicWorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 125
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest;

    .line 127
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    sget-object v2, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 128
    invoke-virtual {v1, v0, v2, p0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 15

    .line 56
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->TAG:Ljava/lang/String;

    const-string v1, "Is Running"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    .line 60
    invoke-static {}, Lcom/chlegou/bitbot/models/LogEvent;->builder()Lcom/chlegou/bitbot/models/LogEvent$LogEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent$LogEventBuilder;->build()Lcom/chlegou/bitbot/models/LogEvent;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->getRunAttemptCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATTEMPT"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v3

    const-string v4, "FREEBITCOIN_ACTION_TYPE"

    invoke-virtual {v1, v4}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {}, Lcom/chlegou/bitbot/utils/Connectivity;->isOnline()Z

    move-result v3

    const-string v5, "NETWORK"

    const-string v6, "KEY_LOGGER_FREEBITCOIN_EVENT"

    const-string v7, "RESULT"

    if-nez v3, :cond_0

    const-string v1, "Network wasn\'t reached, retrying after some time."

    .line 66
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v3, "retry"

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {v2, v1}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 70
    invoke-static {v6, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 71
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v3

    const-string v8, "Network is fine."

    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/chlegou/bitbot/utils/FirebaseUtils;->fetchAndSaveFCMToken()V

    const-string v3, "FREEBITCOIN_ACCOUNT_ID"

    .line 79
    invoke-virtual {v1, v3}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-static {v5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountId isNullOrEmpty:: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "accountId not found."

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v3, "failure"

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v2, v1}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 85
    invoke-static {v6, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 86
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 88
    :cond_1
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {v5}, Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;->getAutoBonusAwaitingProducts(Ljava/lang/String;)Lcom/chlegou/bitbot/models/DataWrapper;

    move-result-object v8

    .line 91
    invoke-virtual {v8}, Lcom/chlegou/bitbot/models/DataWrapper;->getData()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "productIds :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v9, 0x0

    .line 95
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    int-to-long v10, v0

    .line 96
    new-instance v12, Landroidx/work/Data$Builder;

    invoke-direct {v12}, Landroidx/work/Data$Builder;-><init>()V

    .line 97
    invoke-virtual {v12, v3, v5}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v12

    .line 98
    invoke-virtual {v1, v4}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v12

    const-string v13, "FREEBITCOIN_ACTION"

    const-string v14, "FREEBITCOIN_ACTION_REDEEM_RP"

    .line 99
    invoke-virtual {v12, v13, v14}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v12

    .line 100
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "FREEBITCOIN_ACTION_VALUE"

    invoke-virtual {v12, v14, v13}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v12

    .line 101
    invoke-virtual {v12}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v12

    .line 96
    invoke-static {v10, v11, v12}, Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;->scheduleExactAfterSomeDelayInSeconds(JLandroidx/work/Data;)V

    add-int/lit8 v0, v0, 0x1e

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 106
    :cond_2
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoBonusWorker;->TAG:Ljava/lang/String;

    const-string v1, "completing job."

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ACTION"

    const-string v3, "completed action."

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "success"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v2, v3}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 110
    invoke-static {v6, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 111
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
