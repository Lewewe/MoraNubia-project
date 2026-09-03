.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;
.super Ljava/lang/Object;
.source "OutputTextAreaView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$OnItemClickedListener;,
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OutputListView"


# instance fields
.field private context:Landroid/content/Context;

.field private entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;

.field private onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$OnItemClickedListener;

.field private showVerticalOfIcon:Z

.field private size:[I

.field private svContent:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/LimitedScrollView;

.field private tvAITips:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputAiTipsView;

.field private tvContent:Landroid/widget/TextView;

.field private viewRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setAITips()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->context:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->morachat_gameagent_window_ai_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/zte/aivoice/AIVoiceManager;->getTTSDurationByWords(Ljava/lang/String;)J

    move-result-wide v1

    .line 99
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;->access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;->access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/aivoice/AIVoiceManager;->getTTSDurationByWords(Ljava/lang/String;)J

    move-result-wide v1

    .line 102
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputAiTipsView;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputAiTipsView;->setText(Ljava/lang/String;JZ)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/content/Context;Landroid/view/View;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;
    .locals 3

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->context:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$OnItemClickedListener;

    .line 32
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->viewRoot:Landroid/view/View;

    if-eq p3, p2, :cond_0

    .line 33
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->viewRoot:Landroid/view/View;

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object p3

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 36
    aget v1, p3, v1

    const/4 v2, 0x1

    aget p3, p3, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p3, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_gameagent_window_menu_list_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->sv_content:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/LimitedScrollView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->svContent:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/LimitedScrollView;

    .line 39
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_content:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->tvContent:Landroid/widget/TextView;

    .line 40
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_ai_tips:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputAiTipsView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputAiTipsView;

    :cond_0
    return-object p0
.end method

.method public getSize()[I
    .locals 6

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->size:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 72
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 73
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;->access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;->access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 74
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->viewRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 75
    aget v4, v0, v1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v4, v3

    aput v4, v0, v1

    .line 76
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->svContent:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/LimitedScrollView;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/LimitedScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 77
    aget v1, v0, v1

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->svContent:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/LimitedScrollView;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/LimitedScrollView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->svContent:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/LimitedScrollView;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/LimitedScrollView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    .line 78
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->tvContent:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;->access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcn/nubia/redmagickyi/util/TextViewLinesUtil;->getTextViewHeight(Landroid/widget/TextView;Ljava/lang/String;I)I

    move-result v1

    .line 79
    aget v4, v0, v2

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->svContent:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/LimitedScrollView;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/LimitedScrollView;->getMaxHeight()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v5

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    add-int/2addr v4, v1

    aput v4, v0, v2

    .line 80
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->tvAITips:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputAiTipsView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputAiTipsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 81
    aget v3, v0, v2

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v1

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 83
    :cond_1
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->size:[I

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->viewRoot:Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->viewRoot:Landroid/view/View;

    return-object p0
.end method

.method public isShowVerticalOfIcon()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->showVerticalOfIcon:Z

    return p0
.end method

.method public setData(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;Z)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "=====================setData : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showVerticalOfIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OutputListView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->size:[I

    .line 90
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;

    .line 91
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->showVerticalOfIcon:Z

    .line 92
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->tvContent:Landroid/widget/TextView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;->access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->setAITips()V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->viewRoot:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->viewRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 63
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;->setAITips()V

    :cond_0
    return-void
.end method
