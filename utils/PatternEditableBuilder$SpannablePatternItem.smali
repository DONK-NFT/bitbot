.class public Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;
.super Ljava/lang/Object;
.source "PatternEditableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chlegou/bitbot/utils/PatternEditableBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpannablePatternItem"
.end annotation


# instance fields
.field public listener:Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;

.field public pattern:Ljava/util/regex/Pattern;

.field public styles:Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;

.field final synthetic this$0:Lcom/chlegou/bitbot/utils/PatternEditableBuilder;


# direct methods
.method public constructor <init>(Lcom/chlegou/bitbot/utils/PatternEditableBuilder;Ljava/util/regex/Pattern;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;->this$0:Lcom/chlegou/bitbot/utils/PatternEditableBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;->pattern:Ljava/util/regex/Pattern;

    .line 54
    iput-object p3, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;->styles:Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;

    .line 55
    iput-object p4, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;->listener:Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;

    return-void
.end method
