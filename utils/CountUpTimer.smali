.class public Lcom/chlegou/bitbot/utils/CountUpTimer;
.super Landroid/os/CountDownTimer;
.source "CountUpTimer.java"


# static fields
.field private static final INTERVAL_MS:J = 0x3e8L


# instance fields
.field private endDateMillis:J

.field private startDateMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 4

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 42
    iput-wide p1, p0, Lcom/chlegou/bitbot/utils/CountUpTimer;->startDateMillis:J

    return-void
.end method


# virtual methods
.method public getEndDateMillis()J
    .locals 5

    .line 89
    iget-wide v0, p0, Lcom/chlegou/bitbot/utils/CountUpTimer;->endDateMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getStartDateInSeconds()J
    .locals 4

    .line 84
    iget-wide v0, p0, Lcom/chlegou/bitbot/utils/CountUpTimer;->startDateMillis:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartDateMillis()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/chlegou/bitbot/utils/CountUpTimer;->startDateMillis:J

    return-wide v0
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
