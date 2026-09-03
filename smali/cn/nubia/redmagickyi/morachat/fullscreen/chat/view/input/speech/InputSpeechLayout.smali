.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "InputSpeechLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;
    }
.end annotation


# instance fields
.field private audioPath:Ljava/lang/String;

.field private callback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;

.field private displayingLayout:Landroid/view/View;

.field private isPortrait:Z

.field private speechBar:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;

.field private speechBarRect:Landroid/graphics/RectF;

.field private trigger:Landroid/view/View;

.field private triggerRect:Landroid/graphics/RectF;

.field private tvHint:Landroid/widget/TextView;

.field private tvWords:Landroid/widget/TextView;

.field private waveView:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->tvWords:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->waveView:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->updateValidState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->changeChildViewState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)Z
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->isValid()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->callback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;

    return-object p0
.end method

.method private calcViewScreenLocation(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 6

    const/4 p0, 0x2

    .line 269
    new-array p0, p0, [I

    .line 270
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    aget v1, p0, v1

    int-to-float v2, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    aget p0, p0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    int-to-float p0, p0

    invoke-direct {v0, v2, v4, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private changeChildViewState(Z)V
    .locals 4

    .line 252
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->waveView:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->tvWords:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->tvHint:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->speechBar:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->setVisibility(I)V

    return-void
.end method

.method private dismiss(Z)V
    .locals 2

    .line 220
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$3;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;Z)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->setClickable(Z)V

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->displayingLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 68
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->aigc_dialog_input_speech_layout:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->displayingLayout:Landroid/view/View;

    .line 69
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->aigc_dialog_input_speech_waveview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->waveView:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    .line 70
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->aigc_dialog_input_speech_words:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->tvWords:Landroid/widget/TextView;

    .line 71
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->aigc_dialog_input_speech_hint:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->tvHint:Landroid/widget/TextView;

    .line 72
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->aigc_dialog_input_speech_bar:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->speechBar:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;

    .line 74
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->displayingLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->isPortrait:Z

    if-eqz v1, :cond_1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_fs_chat_input_wave_height_pad_portait:I

    goto :goto_0

    :cond_1
    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_fs_chat_input_wave_height_pad_landscape:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 78
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->displayingLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 79
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq v2, v0, :cond_2

    .line 80
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->displayingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->waveView:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;

    if-eqz v0, :cond_3

    .line 85
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->isPortrait:Z

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->onOrientationChanged(Z)V

    .line 87
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->tvWords:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 88
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15p33_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 89
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->tvWords:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_f2_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->tvWords:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 90
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->isPortrait:Z

    if-eqz v2, :cond_4

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_90_dp:I

    goto :goto_1

    :cond_4
    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_240_dp:I

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 91
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->tvWords:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 92
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    if-ne v3, v0, :cond_5

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    if-eq v3, v0, :cond_6

    .line 93
    :cond_5
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 94
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->tvWords:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->tvHint:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 99
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_13p8_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 101
    :cond_7
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->speechBar:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;

    if-eqz v0, :cond_a

    .line 102
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->isPortrait:Z

    if-eqz v1, :cond_8

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_fs_chat_input_margin_horizontal_pad_portait:I

    goto :goto_2

    :cond_8
    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_fs_chat_input_margin_horizontal_pad_landscape:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 103
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_fs_chat_input_margin_bottom_pad:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 104
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->speechBar:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 105
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    if-ne v3, v0, :cond_9

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    if-ne v3, v0, :cond_9

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v3, v1, :cond_a

    .line 106
    :cond_9
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 107
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 108
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->speechBar:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void
.end method

.method private isTouchInRect(FFLandroid/graphics/RectF;)Z
    .locals 0

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 281
    :cond_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method private isValid()Z
    .locals 0

    .line 259
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->speechBar:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->isValid()Z

    move-result p0

    return p0
.end method

.method private show()V
    .locals 2

    .line 203
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateValidState(Z)V
    .locals 3

    .line 263
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->speechBar:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->setValid(Z)V

    .line 264
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->tvHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_speech_hint:I

    goto :goto_0

    :cond_0
    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_speech_hint_cancel:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->tvHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_1

    sget p1, Lcn/nubia/redmagickyi/main/R$color;->morachat_fs_chat_speech_hint_text:I

    goto :goto_1

    :cond_1
    sget p1, Lcn/nubia/redmagickyi/main/R$color;->morachat_fs_chat_speech_hint_cancel_text:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public bindTrigger(Landroid/view/View;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->trigger:Landroid/view/View;

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 174
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->dismiss(Z)V

    return-void
.end method

.method public getAudioPath()Ljava/lang/String;
    .locals 0

    .line 199
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->audioPath:Ljava/lang/String;

    return-object p0
.end method

.method public getWords()Ljava/lang/String;
    .locals 0

    .line 187
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->tvWords:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->triggerRect:Landroid/graphics/RectF;

    .line 133
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->speechBarRect:Landroid/graphics/RectF;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 62
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    .line 63
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->initView()V

    return-void
.end method

.method public onOrientationChanged(Z)V
    .locals 1

    .line 116
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->isPortrait:Z

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->triggerRect:Landroid/graphics/RectF;

    .line 119
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->speechBarRect:Landroid/graphics/RectF;

    .line 120
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->initView()V

    :cond_0
    return-void
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->audioPath:Ljava/lang/String;

    return-void
.end method

.method public setCallback(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->callback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;

    return-void
.end method

.method public setProgress(D)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->speechBar:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;->setProgress(D)V

    return-void
.end method

.method public setWords(Ljava/lang/String;)V
    .locals 2

    .line 178
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchToSpeechMode(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 153
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->speechBarRect:Landroid/graphics/RectF;

    if-nez p1, :cond_1

    .line 154
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->speechBar:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/SpeechBar;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->calcViewScreenLocation(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->speechBarRect:Landroid/graphics/RectF;

    .line 156
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->speechBarRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->isTouchInRect(FFLandroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->updateValidState(Z)V

    goto :goto_0

    .line 159
    :cond_2
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->updateValidState(Z)V

    goto :goto_0

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 166
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->dismiss(Z)V

    goto :goto_0

    .line 141
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->trigger:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 142
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->triggerRect:Landroid/graphics/RectF;

    if-nez p1, :cond_5

    .line 143
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->trigger:Landroid/view/View;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->calcViewScreenLocation(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->triggerRect:Landroid/graphics/RectF;

    .line 145
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->triggerRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->isTouchInRect(FFLandroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->callback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout$Callback;->isAllowSwitchToSpeechMode()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 146
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/InputSpeechLayout;->show()V

    return v3

    :cond_6
    :goto_0
    return v2
.end method
