.class public interface abstract Lcom/chlegou/bitbot/utils/AdMobUtils$Ids;
.super Ljava/lang/Object;
.source "AdMobUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chlegou/bitbot/utils/AdMobUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ids"
.end annotation


# static fields
.field public static final ADMOB_APP_ID:Ljava/lang/String;

.field public static final ADMOB_TEST_DEVICES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AD_BANNER_RELEASE_FREEBITCOIN_ID:Ljava/lang/String; = "ca-app-pub-1920839813744991/8648718114"

.field public static final AD_BANNER_RELEASE_MAIN_ID:Ljava/lang/String; = "ca-app-pub-1920839813744991/4003800054"

.field public static final AD_BANNER_RELEASE_NEWS_ID:Ljava/lang/String; = "ca-app-pub-1920839813744991/4493850685"

.field public static final AD_BANNER_TEST_ID:Ljava/lang/String; = "ca-app-pub-3940256099942544/6300978111"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getRes()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chlegou/bitbot/utils/AdMobUtils$Ids;->ADMOB_APP_ID:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "532DEC31432FAD4E6B57F8023B3E356A"

    aput-object v2, v0, v1

    .line 25
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/chlegou/bitbot/utils/AdMobUtils$Ids;->ADMOB_TEST_DEVICES:Ljava/util/List;

    return-void
.end method
