.class public Lcom/chlegou/bitbot/worker/NotificationWorker;
.super Landroidx/work/Worker;
.source "NotificationWorker.java"


# static fields
.field public static final KEY_NOTIFICATION_ID:Ljava/lang/String; = "NOTIFICATION_ID"

.field public static final KEY_NOTIFICATION_LARGE_ICON_REMOTE_URI:Ljava/lang/String; = "NOTIFICATION_LARGE_ICON_REMOTE_URI"

.field public static final KEY_NOTIFICATION_PRIMARY_LANDING_ACTIVITY:Ljava/lang/String; = "NOTIFICATION_PRIMARY_LANDING_ACTIVITY"

.field public static final KEY_NOTIFICATION_SMALL_ICON:Ljava/lang/String; = "NOTIFICATION_SMALL_ICON"

.field public static final KEY_NOTIFICATION_TEXT:Ljava/lang/String; = "NOTIFICATION_TEXT"

.field public static final KEY_NOTIFICATION_TITLE:Ljava/lang/String; = "NOTIFICATION_TITLE"

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

.field private static final NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "BitBot"

.field public static final NOTIFICATION_ID:I = 0x457

.field private static final TAG:Ljava/lang/String; = "NotificationWorker"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getRes()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chlegou/bitbot/worker/NotificationWorker;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static cancelNotificationsWithId(I)V
    .locals 3

    .line 177
    sget-object v0, Lcom/chlegou/bitbot/worker/NotificationWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling notifications with Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOTIFICATION_ID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    return-void
.end method

.method public static isNotificationScheduledForWebsite(I)Z
    .locals 4

    .line 184
    sget-object v0, Lcom/chlegou/bitbot/worker/NotificationWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNotificationScheduledForWebsite with Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOTIFICATION_ID_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/work/WorkManager;->getWorkInfosByTagLiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 190
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/work/WorkInfo;

    invoke-virtual {p0}, Landroidx/work/WorkInfo;->getState()Landroidx/work/WorkInfo$State;

    move-result-object p0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " notificationId :: state --- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/work/WorkInfo$State;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/work/WorkInfo$State;

    .line 197
    sget-object v2, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic lambda$scheduleExactAfterSomeDelayInSeconds$0(Landroidx/work/Data;JLjava/lang/String;)V
    .locals 2

    .line 167
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Lcom/chlegou/bitbot/worker/NotificationWorker;

    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 168
    invoke-virtual {v0, p0}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 169
    invoke-virtual {p0, p1, p2, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 170
    invoke-virtual {p0, p3}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 171
    invoke-virtual {p0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest;

    .line 172
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method public static scheduleExactAfterSomeDelayInSeconds(JLandroidx/work/Data;)V
    .locals 3

    .line 161
    sget-object v0, Lcom/chlegou/bitbot/worker/NotificationWorker;->TAG:Ljava/lang/String;

    const-string v1, "scheduling"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NOTIFICATION_ID"

    const/16 v1, 0x457

    .line 163
    invoke-virtual {p2, v0, v1}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOTIFICATION_ID_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    move-result-object v1

    invoke-interface {v1}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/chlegou/bitbot/worker/NotificationWorker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p0, p1, v0}, Lcom/chlegou/bitbot/worker/NotificationWorker$$ExternalSyntheticLambda0;-><init>(Landroidx/work/Data;JLjava/lang/String;)V

    sget-object p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1$$ExternalSyntheticLambda1;->INSTANCE:Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1$$ExternalSyntheticLambda1;

    invoke-interface {v1, v2, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 13

    .line 63
    sget-object v0, Lcom/chlegou/bitbot/worker/NotificationWorker;->TAG:Ljava/lang/String;

    const-string v1, "Is Running"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "KEY_GLOBAL_SETTINGS"

    const-string v4, "KEY_NOTIFICATION"

    invoke-static {v3, v4, v2}, Lcom/chlegou/bitbot/utils/PreferencesUtils;->getFromPreferencesGroupByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v1, "Ignoring Notification since not enabled in global settings"

    .line 69
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/chlegou/bitbot/worker/NotificationWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const/16 v4, 0x457

    const-string v5, "NOTIFICATION_ID"

    .line 75
    invoke-virtual {v0, v5, v4}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v4

    const v5, 0x7f080168

    const-string v6, "NOTIFICATION_SMALL_ICON"

    .line 76
    invoke-virtual {v0, v6, v5}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "NOTIFICATION_LARGE_ICON_REMOTE_URI"

    .line 77
    invoke-virtual {v0, v6}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "NOTIFICATION_TITLE"

    .line 78
    invoke-virtual {v0, v7}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "BitBot"

    invoke-static {v7, v8}, Lcom/chlegou/bitbot/utils/Tools;->getStringWithDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "NOTIFICATION_TEXT"

    .line 79
    invoke-virtual {v0, v9}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/chlegou/bitbot/utils/Tools;->getStringWithDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 80
    const-class v10, Lcom/chlegou/bitbot/activity/MainActivity;

    :try_start_0
    const-string v11, "NOTIFICATION_PRIMARY_LANDING_ACTIVITY"

    .line 82
    invoke-virtual {v0, v11}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v11, Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/chlegou/bitbot/utils/Tools;->getStringWithDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 88
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    new-instance v11, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/chlegou/bitbot/worker/NotificationWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const v10, 0x10008000

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/chlegou/bitbot/worker/NotificationWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v12, v11

    invoke-virtual {p0}, Lcom/chlegou/bitbot/worker/NotificationWorker;->getPendingIntentFlagByVersionCode()I

    move-result v11

    invoke-static {v10, v12, v0, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 99
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    const/4 v12, 0x4

    if-lt v10, v11, :cond_1

    .line 100
    new-instance v10, Landroid/app/NotificationChannel;

    sget-object v11, Lcom/chlegou/bitbot/worker/NotificationWorker;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v10, v11, v8, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 101
    invoke-virtual {v10, v8}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const v8, -0x777778

    .line 102
    invoke-virtual {v10, v8}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 103
    invoke-virtual {v10, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 104
    invoke-virtual {v10, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/chlegou/bitbot/worker/NotificationWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v11, Landroid/app/NotificationManager;

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Landroid/app/NotificationManager;

    invoke-virtual {v8, v10}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 108
    :cond_1
    new-instance v8, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/chlegou/bitbot/worker/NotificationWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/chlegou/bitbot/worker/NotificationWorker;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v8, v10, v11}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v8, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 110
    invoke-virtual {v8, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 111
    invoke-virtual {v7, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    new-instance v8, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 112
    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 113
    invoke-virtual {v7, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v7, -0x333334

    .line 115
    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v12}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setBadgeIconType(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 122
    invoke-static {v6}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    invoke-static {v5}, Lcom/chlegou/bitbot/utils/ResourceUtils;->getBitmapFromResourceId(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 125
    :try_start_1
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->get()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 127
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 129
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_2
    const-string v1, "KEY_NOTIFICATION_VIBRATE"

    .line 132
    invoke-static {v3, v1, v2}, Lcom/chlegou/bitbot/utils/PreferencesUtils;->getFromPreferencesGroupByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-le v1, v5, :cond_3

    const/4 v1, 0x3

    new-array v1, v1, [J

    .line 134
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    :cond_3
    const-string v1, "KEY_NOTIFICATION_SOUND"

    .line 137
    invoke-static {v3, v1, v2}, Lcom/chlegou/bitbot/utils/PreferencesUtils;->getFromPreferencesGroupByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 142
    :cond_4
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 145
    :try_start_2
    invoke-virtual {p0}, Lcom/chlegou/bitbot/worker/NotificationWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 147
    sget-object v1, Lcom/chlegou/bitbot/worker/NotificationWorker;->TAG:Ljava/lang/String;

    const-string v2, "Error showing notification"

    invoke-static {v1, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    :goto_2
    sget-object v0, Lcom/chlegou/bitbot/worker/NotificationWorker;->TAG:Ljava/lang/String;

    const-string v1, "notification is shown. work is completed."

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        0x3e8
        0x3e8
        0x3e8
    .end array-data
.end method

.method public getPendingIntentFlagByVersionCode()I
    .locals 2

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/high16 v0, 0xc000000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x8000000

    :goto_0
    return v0
.end method
