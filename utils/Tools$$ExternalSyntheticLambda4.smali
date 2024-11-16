.class public final synthetic Lcom/chlegou/bitbot/utils/Tools$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava9/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/chlegou/bitbot/utils/Tools$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chlegou/bitbot/utils/Tools$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/chlegou/bitbot/utils/Tools$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/chlegou/bitbot/utils/Tools$$ExternalSyntheticLambda4;->INSTANCE:Lcom/chlegou/bitbot/utils/Tools$$ExternalSyntheticLambda4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava9/util/function/Function;)Ljava9/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Ljava9/util/function/Function$-CC;->$default$andThen(Ljava9/util/function/Function;Ljava9/util/function/Function;)Ljava9/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/chlegou/bitbot/utils/Tools;->lambda$convertMapToTextViewHtmlString$4(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava9/util/function/Function;)Ljava9/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Ljava9/util/function/Function$-CC;->$default$compose(Ljava9/util/function/Function;Ljava9/util/function/Function;)Ljava9/util/function/Function;

    move-result-object p1

    return-object p1
.end method
