.class public final synthetic Lcom/chlegou/bitbot/utils/FirebaseUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/chlegou/bitbot/utils/FirebaseUtils$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chlegou/bitbot/utils/FirebaseUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/chlegou/bitbot/utils/FirebaseUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/chlegou/bitbot/utils/FirebaseUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/chlegou/bitbot/utils/FirebaseUtils$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p1}, Lcom/chlegou/bitbot/utils/FirebaseUtils;->lambda$fetchAndSaveFCMToken$0(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
