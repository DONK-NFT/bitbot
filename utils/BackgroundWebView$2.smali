.class synthetic Lcom/chlegou/bitbot/utils/BackgroundWebView$2;
.super Ljava/lang/Object;
.source "BackgroundWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chlegou/bitbot/utils/BackgroundWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$chlegou$bitbot$utils$BroadcastUtils$Key:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 152
    invoke-static {}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->values()[Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/chlegou/bitbot/utils/BackgroundWebView$2;->$SwitchMap$com$chlegou$bitbot$utils$BroadcastUtils$Key:[I

    :try_start_0
    sget-object v1, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->WEB_VIEW_JS_EVALUATED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method