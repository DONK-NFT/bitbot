.class public Lcom/chlegou/bitbot/utils/PatternEditableBuilder;
.super Ljava/lang/Object;
.source "PatternEditableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chlegou/bitbot/utils/PatternEditableBuilder$StyledClickableSpan;,
        Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;,
        Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;,
        Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;
    }
.end annotation


# instance fields
.field patterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder;->patterns:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addPattern(Ljava/util/regex/Pattern;)Lcom/chlegou/bitbot/utils/PatternEditableBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, v0, v0}, Lcom/chlegou/bitbot/utils/PatternEditableBuilder;->addPattern(Ljava/util/regex/Pattern;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;)Lcom/chlegou/bitbot/utils/PatternEditableBuilder;

    return-object p0
.end method

.method public addPattern(Ljava/util/regex/Pattern;I)Lcom/chlegou/bitbot/utils/PatternEditableBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, p2, v0}, Lcom/chlegou/bitbot/utils/PatternEditableBuilder;->addPattern(Ljava/util/regex/Pattern;ILcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;)Lcom/chlegou/bitbot/utils/PatternEditableBuilder;

    return-object p0
.end method

.method public addPattern(Ljava/util/regex/Pattern;ILcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;)Lcom/chlegou/bitbot/utils/PatternEditableBuilder;
    .locals 1

    .line 145
    new-instance v0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$1;

    invoke-direct {v0, p0, p2}, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$1;-><init>(Lcom/chlegou/bitbot/utils/PatternEditableBuilder;I)V

    .line 151
    invoke-virtual {p0, p1, v0, p3}, Lcom/chlegou/bitbot/utils/PatternEditableBuilder;->addPattern(Ljava/util/regex/Pattern;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;)Lcom/chlegou/bitbot/utils/PatternEditableBuilder;

    return-object p0
.end method

.method public addPattern(Ljava/util/regex/Pattern;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;)Lcom/chlegou/bitbot/utils/PatternEditableBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, p1, v0, p2}, Lcom/chlegou/bitbot/utils/PatternEditableBuilder;->addPattern(Ljava/util/regex/Pattern;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;)Lcom/chlegou/bitbot/utils/PatternEditableBuilder;

    return-object p0
.end method

.method public addPattern(Ljava/util/regex/Pattern;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;)Lcom/chlegou/bitbot/utils/PatternEditableBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, p2, v0}, Lcom/chlegou/bitbot/utils/PatternEditableBuilder;->addPattern(Ljava/util/regex/Pattern;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;)Lcom/chlegou/bitbot/utils/PatternEditableBuilder;

    return-object p0
.end method

.method public addPattern(Ljava/util/regex/Pattern;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;)Lcom/chlegou/bitbot/utils/PatternEditableBuilder;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder;->patterns:Ljava/util/ArrayList;

    new-instance v1, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;-><init>(Lcom/chlegou/bitbot/utils/PatternEditableBuilder;Ljava/util/regex/Pattern;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 172
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder;->patterns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;

    .line 174
    iget-object v2, v1, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 175
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 177
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 178
    new-instance v5, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$StyledClickableSpan;

    invoke-direct {v5, p0, v1}, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$StyledClickableSpan;-><init>(Lcom/chlegou/bitbot/utils/PatternEditableBuilder;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;)V

    const/4 v6, 0x0

    .line 179
    invoke-virtual {v0, v5, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public into(Landroid/widget/TextView;)V
    .locals 1

    .line 164
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/utils/PatternEditableBuilder;->build(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
