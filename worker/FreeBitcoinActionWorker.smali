.class public Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;
.super Landroidx/work/Worker;
.source "FreeBitcoinActionWorker.java"


# static fields
.field public static final FREEBITCOIN_ACCOUNT_ID:Ljava/lang/String; = "FREEBITCOIN_ACCOUNT_ID"

.field public static final FREEBITCOIN_ACTION:Ljava/lang/String; = "FREEBITCOIN_ACTION"

.field private static final FREEBITCOIN_ACTION_ID:Ljava/lang/String; = "FREEBITCOIN_ACTION_ID"

.field public static final FREEBITCOIN_ACTION_REDEEM_RP:Ljava/lang/String; = "FREEBITCOIN_ACTION_REDEEM_RP"

.field public static final FREEBITCOIN_ACTION_TOGGLE_LOTTERY:Ljava/lang/String; = "FREEBITCOIN_ACTION_TOGGLE_LOTTERY"

.field public static final FREEBITCOIN_ACTION_TYPE:Ljava/lang/String; = "FREEBITCOIN_ACTION_TYPE"

.field public static final FREEBITCOIN_ACTION_TYPE_MANUAL:Ljava/lang/String; = "MC"

.field public static final FREEBITCOIN_ACTION_TYPE_SERVER_NOTIFICATION:Ljava/lang/String; = "SN"

.field public static final FREEBITCOIN_ACTION_TYPE_STANDALONE_APP:Ljava/lang/String; = "SAP"

.field public static final FREEBITCOIN_ACTION_VALUE:Ljava/lang/String; = "FREEBITCOIN_ACTION_VALUE"

.field private static final FREEBITCOIN_ACTION_WORKER_LOG:Ljava/lang/String; = "FREEBITCOIN_ACTION_WORKER_LOG"

.field private static final TAG:Ljava/lang/String; = "FreeBitcoinActionWorker"


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

.method public static buildExactAfterSomeDelayInSeconds(JLandroidx/work/Data;)Landroidx/work/OneTimeWorkRequest;
    .locals 3

    .line 225
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduling after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FREEBITCOIN_ACCOUNT_ID"

    .line 227
    invoke-virtual {p2, v0}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/Tools;->getStringWithDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;->buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v2, Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;

    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 231
    invoke-virtual {v1, p2}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v1

    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 232
    invoke-virtual {v1, p0, p1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-string p1, "FREEBITCOIN_ACTION"

    .line 233
    invoke-virtual {p0, p1}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 234
    invoke-virtual {p0, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p2, p1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    sget-object p1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    .line 236
    invoke-virtual {p0, p1, v0, v1, p2}, Landroidx/work/OneTimeWorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 237
    invoke-virtual {p0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest;

    return-object p0
.end method

.method private static buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FREEBITCOIN_ACTION_ID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static scheduleExactAfterSomeDelayInSeconds(JLandroidx/work/Data;)V
    .locals 0

    .line 213
    invoke-static {p0, p1, p2}, Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;->buildExactAfterSomeDelayInSeconds(JLandroidx/work/Data;)Landroidx/work/OneTimeWorkRequest;

    move-result-object p0

    .line 216
    :try_start_0
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    .line 217
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

    .line 220
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 16

    .line 67
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;->TAG:Ljava/lang/String;

    const-string v1, "Is Running"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    .line 71
    invoke-static {}, Lcom/chlegou/bitbot/models/LogEvent;->builder()Lcom/chlegou/bitbot/models/LogEvent$LogEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent$LogEventBuilder;->build()Lcom/chlegou/bitbot/models/LogEvent;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;->getRunAttemptCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATTEMPT"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v3

    const-string v4, "FREEBITCOIN_ACTION_TYPE"

    invoke-virtual {v1, v4}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v3, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->FREEBITCOIN_ACTION_COMPLETED_ERROR:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 78
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 79
    sget-object v6, Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;->UNRESOLVED_EVENT:Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;

    const-string v7, "FREEBITCOIN_ACTION"

    .line 81
    invoke-virtual {v1, v7}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-static {v8}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "failure"

    const-string v11, "KEY_LOGGER_FREEBITCOIN_EVENT"

    const-string v12, "RESULT"

    if-eqz v9, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action isNullOrEmpty:: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action not found."

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {v2, v1}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 87
    invoke-static {v11, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 88
    invoke-static {v3, v5}, Lcom/chlegou/bitbot/utils/BroadcastUtils;->broadcast(Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;Landroid/os/Bundle;)V

    .line 89
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v9, "FREEBITCOIN_ACTION_TOGGLE_LOTTERY"

    .line 93
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    const-string v15, "FREEBITCOIN_ACTION_VALUE"

    if-eqz v13, :cond_1

    .line 94
    sget-object v6, Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;->EVENT_TOGGLE_LOTTERY:Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;

    .line 95
    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, v15, v14}, Landroidx/work/Data;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v5, v15, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v9, "FREEBITCOIN_ACTION_REDEEM_RP"

    .line 97
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 98
    sget-object v6, Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;->EVENT_REDEEM_RP:Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;

    .line 99
    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, v15}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v15, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_2
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connectivity.isOnline():: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chlegou/bitbot/utils/Connectivity;->isOnline()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connectivity.isConnectedWifi():: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/chlegou/bitbot/utils/Connectivity;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connectivity.isConnectedMobile():: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/chlegou/bitbot/utils/Connectivity;->isConnectedMobile(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/chlegou/bitbot/utils/Connectivity;->isOnline()Z

    move-result v7

    const-string v8, "NETWORK"

    if-nez v7, :cond_3

    const-string v1, "Network wasn\'t reached, retrying after some time."

    .line 108
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v4, "retry"

    invoke-interface {v0, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {v2, v1}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 112
    invoke-static {v11, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 113
    invoke-static {v3, v5}, Lcom/chlegou/bitbot/utils/BroadcastUtils;->broadcast(Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;Landroid/os/Bundle;)V

    .line 114
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 116
    :cond_3
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v7

    const-string v9, "Network is fine."

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {}, Lcom/chlegou/bitbot/utils/FirebaseUtils;->fetchAndSaveFCMToken()V

    const-string v7, "FREEBITCOIN_ACCOUNT_ID"

    .line 122
    invoke-virtual {v1, v7}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-static {v8}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountId isNullOrEmpty:: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "accountId not found."

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v2, v1}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 128
    invoke-static {v11, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 129
    invoke-static {v3, v5}, Lcom/chlegou/bitbot/utils/BroadcastUtils;->broadcast(Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;Landroid/os/Bundle;)V

    .line 130
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 132
    :cond_4
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {v8}, Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;->getAutoAccount(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinAccount;

    move-result-object v7

    .line 136
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "freeBitcoinAccount :: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "FREEBITCOIN_ACCOUNT"

    if-nez v7, :cond_5

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeBitcoinAccount isNullOrEmpty:: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "account not ready for auto."

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v2, v1}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 142
    invoke-static {v11, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 144
    invoke-static {v3, v5}, Lcom/chlegou/bitbot/utils/BroadcastUtils;->broadcast(Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;Landroid/os/Bundle;)V

    .line 145
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 147
    :cond_5
    invoke-virtual {v7}, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;->isCaptcha()Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v1, "freeBitcoinAccount isEligibleForAutoRoll:: NO"

    .line 148
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "account not auto, needs new synchronization."

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v2, v1}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 152
    invoke-static {v11, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    .line 154
    invoke-static {v3, v5}, Lcom/chlegou/bitbot/utils/BroadcastUtils;->broadcast(Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;Landroid/os/Bundle;)V

    .line 155
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 159
    :cond_6
    invoke-static {v8}, Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;->buildUniqueTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v10}, Lorg/joda/time/DateTime;->now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v10

    invoke-virtual {v10}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v13, "FREEBITCOIN_ACTION_WORKER_LOG"

    invoke-static {v13, v9, v10}, Lcom/chlegou/bitbot/utils/PreferencesUtils;->saveInPreferencesGroupByKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 163
    sget-object v10, Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;->EVENT_TOGGLE_LOTTERY:Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;

    if-ne v6, v10, :cond_7

    .line 164
    invoke-virtual {v1, v15, v14}, Landroidx/work/Data;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;->buildToggleLotteryQuery(I)Ljava/util/Map;

    move-result-object v9

    goto :goto_1

    .line 165
    :cond_7
    sget-object v10, Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;->EVENT_REDEEM_RP:Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;

    if-ne v6, v10, :cond_8

    .line 166
    invoke-virtual {v1, v15}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;->buildRedeemRPProductQuery(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 168
    :cond_8
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "queries :: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v10, Lcom/chlegou/bitbot/network/HttpClient;->instance:Lcom/chlegou/bitbot/network/HttpClient;

    .line 172
    invoke-virtual {v7}, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;->buildHeaders()Ljava/util/Map;

    move-result-object v7

    const-string v13, "https://freebitco.in/"

    .line 170
    invoke-interface {v10, v13, v7, v9}, Lcom/chlegou/bitbot/network/HttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v7

    const/4 v9, 0x0

    .line 177
    :try_start_0
    invoke-interface {v7}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v7

    invoke-virtual {v7}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "remoteCallResponse :: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v7, v9

    .line 180
    :goto_2
    sget-object v10, Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;->TAG:Ljava/lang/String;

    const-string v13, "cached exception in HttpClient remote call."

    invoke-static {v10, v13}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    if-eqz v7, :cond_b

    .line 186
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;->TAG:Ljava/lang/String;

    const-string v10, "saving the event in bitbot servers"

    invoke-static {v0, v10}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;->EVENT_TOGGLE_LOTTERY:Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;

    if-ne v6, v0, :cond_9

    .line 189
    invoke-virtual {v1, v4}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Lcom/chlegou/bitbot/models/FreeBitcoinEventRequest;->build(Ljava/lang/String;Ljava/lang/String;Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;)Lcom/chlegou/bitbot/models/FreeBitcoinEventRequest;

    move-result-object v9

    goto :goto_4

    .line 190
    :cond_9
    sget-object v0, Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;->EVENT_REDEEM_RP:Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;

    if-ne v6, v0, :cond_a

    .line 191
    invoke-virtual {v1, v4}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v15}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v6, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinEventRequest;->build(Ljava/lang/String;Ljava/lang/String;Lcom/chlegou/bitbot/models/FreeBitcoinEventEnum;Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinEventRequest;

    move-result-object v9

    .line 194
    :cond_a
    :goto_4
    invoke-static {v8, v9}, Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;->saveEventDetails(Ljava/lang/String;Lcom/chlegou/bitbot/models/FreeBitcoinEventRequest;)V

    const-string v0, "s"

    .line 195
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 196
    sget-object v3, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->FREEBITCOIN_ACTION_COMPLETED_SUCCESS:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 201
    :cond_b
    sget-object v0, Lcom/chlegou/bitbot/worker/FreeBitcoinActionWorker;->TAG:Ljava/lang/String;

    const-string v1, "completing job."

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v4, "ACTION"

    const-string v6, "completed action."

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LogEvent;->getData()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v4, "success"

    invoke-interface {v1, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v2, v6}, Lcom/chlegou/bitbot/models/LogEvent;->setMessage(Ljava/lang/String;)V

    .line 205
    invoke-static {v11, v2}, Lcom/chlegou/bitbot/models/LogEvent;->appendToLogsInPreferencesByKey(Ljava/lang/String;Lcom/chlegou/bitbot/models/LogEvent;)V

    const-string v1, "notify UI to refresh"

    .line 206
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {v3, v5}, Lcom/chlegou/bitbot/utils/BroadcastUtils;->broadcast(Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;Landroid/os/Bundle;)V

    .line 208
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
