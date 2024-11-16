.class public final synthetic Lcom/chlegou/bitbot/utils/Tools$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chlegou/bitbot/utils/ListFilterUtil$Filter;


# static fields
.field public static final synthetic INSTANCE:Lcom/chlegou/bitbot/utils/Tools$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chlegou/bitbot/utils/Tools$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/chlegou/bitbot/utils/Tools$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/chlegou/bitbot/utils/Tools$$ExternalSyntheticLambda1;->INSTANCE:Lcom/chlegou/bitbot/utils/Tools$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isMatched(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/chlegou/bitbot/models/News;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/chlegou/bitbot/utils/Tools;->lambda$getNotReadNewsCount$2(Lcom/chlegou/bitbot/models/News;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
