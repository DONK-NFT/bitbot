.class synthetic Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$4;
.super Ljava/lang/Object;
.source "FreeBitcoinAccountsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;
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

    .line 271
    invoke-static {}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->values()[Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$4;->$SwitchMap$com$chlegou$bitbot$utils$BroadcastUtils$Key:[I

    :try_start_0
    sget-object v1, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->FREEBITCOIN_AUTO_ROLL_CLAIMED_SUCCESSFULLY:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$4;->$SwitchMap$com$chlegou$bitbot$utils$BroadcastUtils$Key:[I

    sget-object v1, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->FREEBITCOIN_DATA_CHANGED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
