.class Lcom/chlegou/bitbot/utils/PatternEditableBuilder$1;
.super Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;
.source "PatternEditableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/utils/PatternEditableBuilder;->addPattern(Ljava/util/regex/Pattern;ILcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;)Lcom/chlegou/bitbot/utils/PatternEditableBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chlegou/bitbot/utils/PatternEditableBuilder;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/utils/PatternEditableBuilder;I)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$1;->this$0:Lcom/chlegou/bitbot/utils/PatternEditableBuilder;

    invoke-direct {p0, p2}, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onSpanStyled(Landroid/text/TextPaint;)V
    .locals 1

    .line 148
    iget v0, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$1;->spanTextColor:I

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    return-void
.end method
