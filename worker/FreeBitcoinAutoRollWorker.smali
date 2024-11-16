.class public Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;
.super Landroidx/work/Worker;
.source "FreeBitcoinAutoRollWorker.java"


# static fields
.field public static final FREEBITCOIN_ACCOUNT_ID:Ljava/lang/String; = "FREEBITCOIN_ACCOUNT_ID"

.field public static final FREEBITCOIN_AUTO_ROLL:Ljava/lang/String; = "FREEBITCOIN_AUTO_ROLL"

.field private static final FREEBITCOIN_AUTO_ROLL_ID:Ljava/lang/String; = "FREEBITCOIN_AUTO_ROLL_ID"

.field public static final FREEBITCOIN_AUTO_ROLL_TYPE:Ljava/lang/String; = "FREEBITCOIN_AUTO_ROLL_TYPE"

.field public static final FREEBITCOIN_AUTO_ROLL_TYPE_MANUAL:Ljava/lang/String; = "MC"

.field public static final FREEBITCOIN_AUTO_ROLL_TYPE_SERVER_NOTIFICATION:Ljava/lang/String; = "SN"

.field public static final FREEBITCOIN_AUTO_ROLL_TYPE_STANDALONE_APP:Ljava/lang/String; = "SAP"

.field private static final FREEBITCOIN_AUTO_ROLL_WORKER_LOG:Ljava/lang/String; = "FREEBITCOIN_AUTO_ROLL_WORKER_LOG"

.field private static final TAG:Ljava/lang/String; = "FreeBitcoinAutoRollWorker"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private static buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FREEBITCOIN_AUTO_ROLL_ID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cancelWorkerByAccountId(Ljava/lang/String;)V
    .locals 3

    .line 234
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canceling for account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :try_start_0
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    invoke-static {p0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;

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

    .line 238
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getLastWorkingTimeForAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 263
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting LastWorkingTime for account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {p0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "FREEBITCOIN_AUTO_ROLL_WORKER_LOG"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/chlegou/bitbot/utils/PreferencesUtils;->getFromPreferencesGroupByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 265
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

    .line 244
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checking if running for account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 247
    :try_start_0
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v2

    invoke-static {p0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/work/WorkManager;->getWorkInfosByTag(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 248
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

    .line 249
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/WorkInfo;

    .line 250
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

    .line 256
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    :cond_1
    :goto_0
    sget-object p0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->TAG:Ljava/lang/String;

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
    .locals 3

    .line 185
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduling after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FREEBITCOIN_ACCOUNT_ID"

    .line 187
    invoke-virtual {p2, v0}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/Tools;->getStringWithDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->cancelWorkerByAccountId(Ljava/lang/String;)V

    .line 192
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v2, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;

    invoke-direct {v0, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 193
    invoke-virtual {v0, p2}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p2

    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 194
    invoke-virtual {p2, p0, p1, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-string p1, "FREEBITCOIN_AUTO_ROLL"

    .line 195
    invoke-virtual {p0, p1}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 196
    invoke-virtual {p0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    sget-object p1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    .line 197
    invoke-virtual {p0, p1, v0, v1, p2}, Landroidx/work/OneTimeWorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 198
    invoke-virtual {p0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest;

    .line 201
    :try_start_0
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    .line 202
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

    .line 205
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static schedulePeriodicWorker(Landroidx/work/Data;)V
    .locals 10

    .line 211
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->TAG:Ljava/lang/String;

    const-string v1, "scheduling periodic."

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FREEBITCOIN_ACCOUNT_ID"

    .line 213
    invoke-virtual {p0, v0}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/Tools;->getStringWithDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v9, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v2, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    const-wide/16 v6, 0x5

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    .line 218
    invoke-virtual {v9, p0}, Landroidx/work/PeriodicWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest$Builder;

    const-string v1, "FREEBITCOIN_AUTO_ROLL"

    .line 219
    invoke-virtual {p0, v1}, Landroidx/work/PeriodicWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 220
    invoke-virtual {p0, v0}, Landroidx/work/PeriodicWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest$Builder;

    sget-object v1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    .line 221
    invoke-virtual {p0, v1, v3, v4, v2}, Landroidx/work/PeriodicWorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 222
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest;

    .line 224
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    sget-object v2, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 225
    invoke-virtual {v1, v0, v2, p0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 17

    .line 67
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->TAG:Ljava/lang/String;

    const-string v1, "Is Running"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    .line 71
    invoke-static {}, Lcom/chlegou/bitbot/models/LogEvent;->builder()Lcom/chlegou/bitbot/models/LogEvent$LogEventBuilder;

    move-result-object v2

    sget-object v3, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v3}, Lorg/joda/time/DateTime;->now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chlegou/bitbot/models/LogEvent$LogEventBuilder;->createdDate(Ljava/lang/String;)Lcom/chlegou/bitbot/models/LogEvent$LogEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent$LogEventBuilder;->build()Lcom/chlegou/bitbot/models/LogEvent;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->getRunAttemptCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATTEMPT"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v3

    const-string v4, "FREEBITCOIN_AUTO_ROLL_TYPE"

    invoke-virtual {v1, v4}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/chlegou/bitbot/utils/Connectivity;->isOnline()Z

    move-result v3

    const-string v5, "NETWORK"

    const-string v6, "KEY_LOGGER_FREEBITCOIN_EVENT"

    const-string v7, "RESULT"

    if-nez v3, :cond_0

    const-string v1, "Network wasn\'t reached, retrying after some time."

    .line 77
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v3, "retry"

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {v2, v1}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 81
    invoke-static {v6, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 82
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v3

    const-string v8, "Network is fine."

    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Lcom/chlegou/bitbot/utils/FirebaseUtils;->fetchAndSaveFCMToken()V

    const-string v3, "FREEBITCOIN_ACCOUNT_ID"

    .line 89
    invoke-virtual {v1, v3}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-static {v5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "failure"

    if-eqz v8, :cond_1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountId isNullOrEmpty:: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "accountId not found."

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v2, v1}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 95
    invoke-static {v6, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 96
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 98
    :cond_1
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {v5}, Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;->getAutoAccountReadyForAutoRoll(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinAccount;

    move-result-object v10

    .line 101
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "freeBitcoinAccount :: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "FREEBITCOIN_ACCOUNT"

    if-nez v10, :cond_2

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeBitcoinAccount isNullOrEmpty:: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "account not ready for auto."

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v2, v1}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 107
    invoke-static {v6, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 109
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 111
    :cond_2
    invoke-virtual {v10}, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;->isCaptcha()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v1, "freeBitcoinAccount isEligibleForAutoRoll:: NO"

    .line 112
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "account not auto, needs new synchronization."

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v2, v1}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 116
    invoke-static {v6, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 118
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 122
    :cond_3
    invoke-static {v5}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v11}, Lorg/joda/time/DateTime;->now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v11

    invoke-virtual {v11}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "FREEBITCOIN_AUTO_ROLL_WORKER_LOG"

    invoke-static {v12, v8, v11}, Lcom/chlegou/bitbot/utils/PreferencesUtils;->saveInPreferencesGroupByKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v10}, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;->buildHeaders()Ljava/util/Map;

    move-result-object v8

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "https://freebitco.in/"

    invoke-static {v12, v8, v11}, Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler;->remoteCall(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 128
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v11

    const-string v12, "PATTERN_FREEBITCOIN_AUTO_ROLL_TOKEN_NAME"

    invoke-virtual {v11, v12}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/chlegou/bitbot/utils/Tools;->findSubstringWithRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 129
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v12

    const-string v13, "PATTERN_FREEBITCOIN_AUTO_ROLL_TOKEN_VALUE"

    invoke-virtual {v12, v13}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/chlegou/bitbot/utils/Tools;->findSubstringWithRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 130
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v13

    const-string v14, "PATTERN_FREEBITCOIN_AUTO_ROLL_TCGIQEFA"

    invoke-virtual {v13, v14}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Lcom/chlegou/bitbot/utils/Tools;->findSubstringWithRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 132
    invoke-static {v11}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    const-string v14, "BITBOT_FB_TOKEN"

    if-nez v8, :cond_6

    invoke-static {v12}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v13}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_0

    .line 143
    :cond_4
    invoke-virtual {v10}, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;->buildHeaders()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v10, v13}, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;->buildFreePlayCheckQuery(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    move-object/from16 v16, v3

    const-string v3, "https://freebitco.in/cgi-bin/fp_check.pl"

    invoke-static {v3, v8, v15}, Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler;->remoteCall(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid playCheckValidator:: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "invalidToken 2"

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v2, v1}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 149
    invoke-static {v6, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 151
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 153
    :cond_5
    invoke-static {v3}, Lcom/chlegou/bitbot/utils/Tools;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v3, "make the free play."

    .line 155
    invoke-static {v0, v3}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v10}, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;->buildHeaders()Ljava/util/Map;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;->buildFreePlayBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler;->freePlay(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "freePlayResponse :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "saving the claim in bitbot servers"

    .line 161
    invoke-static {v0, v8}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, v4}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;->EVENT_ROLL:Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;

    invoke-static {v3, v1, v8}, Lcom/chlegou/bitbot/models/FreeBitcoinEventRequest;->build(Ljava/lang/String;Ljava/lang/String;Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;)Lcom/chlegou/bitbot/models/FreeBitcoinEventRequest;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;->saveEventDetails(Ljava/lang/String;Lcom/chlegou/bitbot/models/FreeBitcoinEventRequest;)V

    const-string v1, "notify UI to refresh"

    .line 163
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v1, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->FREEBITCOIN_AUTO_ROLL_CLAIMED_SUCCESSFULLY:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/chlegou/bitbot/utils/BroadcastUtils;->broadcast(Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;Landroid/os/Bundle;)V

    const-string v1, "schedule periodic worker."

    .line 168
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v1, Landroidx/work/Data$Builder;

    invoke-direct {v1}, Landroidx/work/Data$Builder;-><init>()V

    move-object/from16 v3, v16

    .line 170
    invoke-virtual {v1, v3, v5}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v1

    const-string v3, "SAP"

    .line 171
    invoke-virtual {v1, v4, v3}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v1

    .line 173
    invoke-static {v1}, Lcom/chlegou/bitbot/worker/FreeBitcoinAutoRollWorker;->schedulePeriodicWorker(Landroidx/work/Data;)V

    const-string v1, "completing job."

    .line 175
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ROLL"

    const-string v3, "completed roll."

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "success"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v2, v3}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 179
    invoke-static {v6, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 180
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 133
    :cond_6
    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    const/4 v4, 0x1

    aput-object v12, v3, v4

    const/4 v4, 0x2

    aput-object v13, v3, v4

    const-string v4, "%s::::%s::::%s"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalidToken:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "invalidToken 1"

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v2, v1}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 138
    invoke-static {v6, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 140
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
