.class public interface abstract Lcom/chlegou/bitbot/utils/FacebookAudienceUtils$Ids;
.super Ljava/lang/Object;
.source "FacebookAudienceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chlegou/bitbot/utils/FacebookAudienceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ids"
.end annotation


# static fields
.field public static final AD_BANNER_RELEASE_FREEBITCOIN_ID:Ljava/lang/String; = "212794290098709_358840675494069"

.field public static final AD_BANNER_RELEASE_LOG_ID:Ljava/lang/String; = "212794290098709_387424539302349"

.field public static final AD_BANNER_RELEASE_NEWS_ID:Ljava/lang/String; = "212794290098709_358552705522866"

.field public static final TEST_DEVICES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "9159cdff-03fc-4a41-83bf-1613e4937390"

    aput-object v2, v0, v1

    .line 21
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/chlegou/bitbot/utils/FacebookAudienceUtils$Ids;->TEST_DEVICES:Ljava/util/List;

    return-void
.end method
