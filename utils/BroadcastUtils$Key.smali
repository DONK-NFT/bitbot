.class public final enum Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;
.super Ljava/lang/Enum;
.source "BroadcastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chlegou/bitbot/utils/BroadcastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

.field public static final enum AUTO_BONUS_FINISHED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

.field public static final enum AUTO_BONUS_RESCHEDULED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

.field public static final enum BACKGROUND_JOB_TERMINATED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

.field public static final enum FREEBITCOIN_ACTION_COMPLETED_ERROR:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

.field public static final enum FREEBITCOIN_ACTION_COMPLETED_SUCCESS:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

.field public static final enum FREEBITCOIN_AUTO_ROLL_CLAIMED_SUCCESSFULLY:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

.field public static final enum FREEBITCOIN_DATA_CHANGED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

.field public static final enum MAIN_BACKGROUND_JOB_FINISHED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

.field public static final enum MAIN_BACKGROUND_JOB_RESCHEDULED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

.field public static final enum WEB_VIEW_DESTROYED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

.field public static final enum WEB_VIEW_FINISHED_LOADING:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

.field public static final enum WEB_VIEW_JS_EVALUATED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 32
    new-instance v0, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const-string v1, "FREEBITCOIN_DATA_CHANGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->FREEBITCOIN_DATA_CHANGED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 36
    new-instance v1, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const-string v3, "FREEBITCOIN_AUTO_ROLL_CLAIMED_SUCCESSFULLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->FREEBITCOIN_AUTO_ROLL_CLAIMED_SUCCESSFULLY:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 40
    new-instance v3, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const-string v5, "FREEBITCOIN_ACTION_COMPLETED_SUCCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->FREEBITCOIN_ACTION_COMPLETED_SUCCESS:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 44
    new-instance v5, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const-string v7, "FREEBITCOIN_ACTION_COMPLETED_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->FREEBITCOIN_ACTION_COMPLETED_ERROR:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 49
    new-instance v7, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const-string v9, "WEB_VIEW_FINISHED_LOADING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->WEB_VIEW_FINISHED_LOADING:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 54
    new-instance v9, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const-string v11, "WEB_VIEW_JS_EVALUATED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->WEB_VIEW_JS_EVALUATED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 59
    new-instance v11, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const-string v13, "WEB_VIEW_DESTROYED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->WEB_VIEW_DESTROYED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 64
    new-instance v13, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const-string v15, "BACKGROUND_JOB_TERMINATED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->BACKGROUND_JOB_TERMINATED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 70
    new-instance v15, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const-string v14, "MAIN_BACKGROUND_JOB_FINISHED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->MAIN_BACKGROUND_JOB_FINISHED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 76
    new-instance v14, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const-string v12, "MAIN_BACKGROUND_JOB_RESCHEDULED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->MAIN_BACKGROUND_JOB_RESCHEDULED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 80
    new-instance v12, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const-string v10, "AUTO_BONUS_FINISHED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->AUTO_BONUS_FINISHED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 84
    new-instance v10, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const-string v8, "AUTO_BONUS_RESCHEDULED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->AUTO_BONUS_RESCHEDULED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 28
    sput-object v8, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->$VALUES:[Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;
    .locals 1

    .line 28
    const-class v0, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    return-object p0
.end method

.method public static values()[Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;
    .locals 1

    .line 28
    sget-object v0, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->$VALUES:[Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    invoke-virtual {v0}, [Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    return-object v0
.end method
