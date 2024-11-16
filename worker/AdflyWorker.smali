.class public Lcom/chlegou/bitbot/worker/AdflyWorker;
.super Landroidx/work/Worker;
.source "AdflyWorker.java"


# static fields
.field private static final INTERVAL:Ljava/lang/String; = "INTERVAL"

.field private static final JS_DELAY_MILLIS:J = 0x3a98L

.field private static final JS_SCRIPT:Ljava/lang/String; = "javascript:(function() {function simulateMouseEvents(u){[\'mouseover\',\'mousedown\',\'mouseup\',\'click\'].forEach(function(e){var n,t,o;n=u,t=e,(o=document.createEvent(\'MouseEvents\')).initEvent(t,!0,!0),n.dispatchEvent(o)})}simulateMouseEvents(document.querySelector(\'#skip_bu2tton\'));$(\'#skip_bu2tton\').click();})()"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "ADFLY"

.field private static final PROVIDER_NAME_HISTORY:Ljava/lang/String; = "ADFLY_HISTORY"

.field private static final TAG:Ljava/lang/String; = "AdflyWorker"

.field private static final URL_FORMAT:Ljava/lang/String; = "%1$s%2$s/%3$s"


# instance fields
.field gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 52
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/chlegou/bitbot/worker/AdflyWorker;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static cancelWorker()V
    .locals 2

    .line 173
    sget-object v0, Lcom/chlegou/bitbot/worker/AdflyWorker;->TAG:Ljava/lang/String;

    const-string v1, "canceling."

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :try_start_0
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    const-string v1, "ADFLY"

    invoke-virtual {v0, v1}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getReadableWorkerHistory()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-static {}, Lcom/chlegou/bitbot/worker/AdflyWorker;->getWorkerHistory()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava9/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/chlegou/bitbot/worker/AdflyWorker$$ExternalSyntheticLambda1;->INSTANCE:Lcom/chlegou/bitbot/worker/AdflyWorker$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava9/util/stream/Stream;->map(Ljava9/util/function/Function;)Ljava9/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava9/util/stream/Collectors;->toList()Ljava9/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava9/util/stream/Stream;->collect(Ljava9/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getWorkerHistory()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "GROUP_WORKERS_HISTORY"

    const-string v2, "ADFLY_HISTORY"

    invoke-static {v1, v2, v0}, Lcom/chlegou/bitbot/utils/PreferencesUtils;->getFromPreferencesGroupByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static isWorkerRunning()Z
    .locals 5

    .line 183
    sget-object v0, Lcom/chlegou/bitbot/worker/AdflyWorker;->TAG:Ljava/lang/String;

    const-string v1, "checking if running."

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 186
    :try_start_0
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v2

    const-string v3, "ADFLY"

    invoke-virtual {v2, v3}, Landroidx/work/WorkManager;->getWorkInfosForUniqueWork(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "workInfoList :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/WorkInfo;

    .line 189
    invoke-virtual {v2}, Landroidx/work/WorkInfo;->getState()Landroidx/work/WorkInfo$State;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    :cond_1
    :goto_0
    sget-object v0, Lcom/chlegou/bitbot/worker/AdflyWorker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWorkerRunning :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic lambda$doWork$0(Ljava/lang/Double;Ljava/lang/Long;)Z
    .locals 3

    .line 79
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    cmpl-double v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getReadableWorkerHistory$1(Ljava/lang/Double;)Ljava/lang/String;
    .locals 3

    .line 206
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    sget-object p0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-direct {v0, v1, v2, p0}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static scheduleExactAfterSomeDelayInSeconds(J)V
    .locals 5

    .line 146
    sget-object v0, Lcom/chlegou/bitbot/worker/AdflyWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleExactAfterSomeDelayInSeconds :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ADFLY"

    .line 149
    invoke-static {v1}, Lcom/chlegou/bitbot/models/LinkProvider;->getRemoteLinkProviderByName(Ljava/lang/String;)Lcom/chlegou/bitbot/models/LinkProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 150
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LinkProvider;->getVisitsPerDay()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    .line 155
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LinkProvider;->getVisitPeriodInMinutes()J

    move-result-wide v2

    const-string v4, "INTERVAL"

    invoke-virtual {v0, v4, v2, v3}, Landroidx/work/Data$Builder;->putLong(Ljava/lang/String;J)Landroidx/work/Data$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    .line 158
    new-instance v2, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v3, Lcom/chlegou/bitbot/worker/AdflyWorker;

    invoke-direct {v2, v3}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 159
    invoke-virtual {v2, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 160
    invoke-virtual {v0, p0, p1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 161
    invoke-virtual {p0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    sget-object p1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    const-wide/16 v0, 0x2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 162
    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 163
    invoke-virtual {p0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest;

    .line 166
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    .line 167
    invoke-virtual {p1, p0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    return-void

    :cond_1
    :goto_0
    const-string p0, "Nothing to schedule, linkProvider not found."

    .line 151
    invoke-static {v0, p0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static schedulePeriodicWorker()V
    .locals 12

    .line 121
    sget-object v0, Lcom/chlegou/bitbot/worker/AdflyWorker;->TAG:Ljava/lang/String;

    const-string v1, "scheduling."

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ADFLY"

    .line 124
    invoke-static {v1}, Lcom/chlegou/bitbot/models/LinkProvider;->getRemoteLinkProviderByName(Ljava/lang/String;)Lcom/chlegou/bitbot/models/LinkProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LinkProvider;->getVisitsPerDay()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    .line 130
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LinkProvider;->getVisitPeriodInMinutes()J

    move-result-wide v3

    const-string v5, "INTERVAL"

    invoke-virtual {v0, v5, v3, v4}, Landroidx/work/Data$Builder;->putLong(Ljava/lang/String;J)Landroidx/work/Data$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    .line 133
    new-instance v11, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v4, Lcom/chlegou/bitbot/worker/AdflyWorker;

    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LinkProvider;->getVisitPeriodInMinutes()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x5

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    .line 134
    invoke-virtual {v11, v0}, Landroidx/work/PeriodicWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 135
    invoke-virtual {v0, v1}, Landroidx/work/PeriodicWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    sget-object v2, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 136
    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/work/PeriodicWorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 137
    invoke-virtual {v0}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest;

    .line 140
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v2

    sget-object v3, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 141
    invoke-virtual {v2, v1, v3, v0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    return-void

    :cond_1
    :goto_0
    const-string v1, "Nothing to schedule, linkProvider not found."

    .line 126
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static schedulePeriodicWorkerIfNotPresent()V
    .locals 2

    .line 114
    sget-object v0, Lcom/chlegou/bitbot/worker/AdflyWorker;->TAG:Ljava/lang/String;

    const-string v1, "schedulePeriodicWorkerIfNotPresent"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/chlegou/bitbot/worker/AdflyWorker;->isWorkerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lcom/chlegou/bitbot/worker/AdflyWorker;->schedulePeriodicWorker()V

    :cond_0
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 9

    .line 62
    sget-object v0, Lcom/chlegou/bitbot/worker/AdflyWorker;->TAG:Ljava/lang/String;

    const-string v1, "Is Running"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/chlegou/bitbot/utils/Connectivity;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Network wasn\'t reached, retrying after some time."

    .line 65
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    invoke-static {}, Lcom/chlegou/bitbot/utils/FirebaseUtils;->fetchAndSaveFCMToken()V

    const-string v1, "ADFLY"

    .line 72
    invoke-static {v1}, Lcom/chlegou/bitbot/models/LinkProvider;->getRemoteLinkProviderByName(Ljava/lang/String;)Lcom/chlegou/bitbot/models/LinkProvider;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 73
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LinkProvider;->getVisitsPerDay()I

    move-result v3

    if-gtz v3, :cond_1

    goto/16 :goto_0

    .line 78
    :cond_1
    invoke-static {}, Lcom/chlegou/bitbot/worker/AdflyWorker;->getWorkerHistory()Ljava/util/List;

    move-result-object v3

    .line 79
    sget-object v4, Lcom/chlegou/bitbot/worker/AdflyWorker$$ExternalSyntheticLambda0;->INSTANCE:Lcom/chlegou/bitbot/worker/AdflyWorker$$ExternalSyntheticLambda0;

    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/chlegou/bitbot/utils/ListFilterUtil;->filterList(Ljava/util/List;Lcom/chlegou/bitbot/utils/ListFilterUtil$Filter;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastDayVisits :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LinkProvider;->getVisitsPerDay()I

    move-result v5

    if-lt v4, v5, :cond_2

    const-string v1, "Max visits are reached, retrying till being able to work."

    .line 83
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 87
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LinkProvider;->getHostName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LinkProvider;->getEasyLinkApi()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {}, Lcom/chlegou/bitbot/models/Link;->generateDynamicPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%1$s%2$s/%3$s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 90
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "URL"

    .line 91
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "JS_SCRIPT"

    const-string v6, "javascript:(function() {function simulateMouseEvents(u){[\'mouseover\',\'mousedown\',\'mouseup\',\'click\'].forEach(function(e){var n,t,o;n=u,t=e,(o=document.createEvent(\'MouseEvents\')).initEvent(t,!0,!0),n.dispatchEvent(o)})}simulateMouseEvents(document.querySelector(\'#skip_bu2tton\'));$(\'#skip_bu2tton\').click();})()"

    .line 92
    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x3a98

    const-string v4, "JS_SCRIPT_DELAY_MILLIS"

    .line 93
    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "PROVIDER_NAME"

    .line 94
    invoke-virtual {v5, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/chlegou/bitbot/worker/AdflyWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/chlegou/bitbot/utils/BackgroundWebView;->open(Landroid/content/Context;Landroid/os/Bundle;)V

    const-string v1, "saving history."

    .line 98
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "GROUP_WORKERS_HISTORY"

    const-string v4, "ADFLY_HISTORY"

    .line 100
    invoke-static {v1, v4, v3}, Lcom/chlegou/bitbot/utils/PreferencesUtils;->saveInPreferencesGroupByKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0}, Lcom/chlegou/bitbot/worker/AdflyWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LinkProvider;->getVisitPeriodInMinutes()J

    move-result-wide v3

    const-string v5, "INTERVAL"

    invoke-virtual {v1, v5, v3, v4}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 103
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/LinkProvider;->getVisitPeriodInMinutes()J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-eqz v5, :cond_3

    const-string v1, "period is changed, rescheduling a new worker."

    .line 104
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/chlegou/bitbot/worker/AdflyWorker;->schedulePeriodicWorker()V

    .line 106
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v1, "completing work."

    .line 109
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    const-string v1, "Nothing to do, we just return success waiting for remote changes."

    .line 74
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
