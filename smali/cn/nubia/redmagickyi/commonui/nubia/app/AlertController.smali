.class public Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$ButtonHandler;,
        Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$CheckedItemAdapter;,
        Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;,
        Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlertController"


# instance fields
.field animPanel:Landroid/view/View;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mBackAnimView:Landroid/view/View;

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNegativeTextColor:I

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonNeutralTextColor:I

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mButtonPositiveTextColor:I

.field private mCheckedItem:I

.field private mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIsContentDividerVisible:Z

.field private mIsMultiChoiceDialog:Z

.field private mIsSingleChoiceDialog:Z

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMatchParentWidth:Z

.field private mMaxHeightRatio:F

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mNubiaLeftButtonBgID:I

.field private mNubiaMiddleButtonBgID:I

.field private mNubiaRightButtonBgID:I

.field private mParentPanelBottom:I

.field private mParentPanelLeft:I

.field private mParentPanelRight:I

.field private mParentPanelTop:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleChoiceView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mTranslatePadding:F

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewSpacingSpecified:Z

    .line 98
    iput v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconId:I

    const/4 v1, -0x1

    .line 112
    iput v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mCheckedItem:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 125
    iput v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mMaxHeightRatio:F

    const/4 v1, 0x1

    .line 126
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mMatchParentWidth:Z

    .line 133
    iput v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPanelLayoutHint:I

    .line 149
    new-instance v0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$1;-><init>(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 203
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 205
    iput-object p3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    .line 206
    new-instance p1, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$ButtonHandler;

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 209
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->resetNubiaAlertDialogLayout()V

    .line 210
    sget p1, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_btn_default_material:I

    sget p2, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_btn_default_material:I

    sget p3, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_btn_default_material:I

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setNubiaButtonBackground(III)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)Landroid/os/Message;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$1002(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIsSingleChoiceDialog:Z

    return p1
.end method

.method static synthetic access$1102(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIsMultiChoiceDialog:Z

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)I
    .locals 0

    .line 61
    iget p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mMultiChoiceItemLayout:I

    return p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)I
    .locals 0

    .line 61
    iget p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mSingleChoiceItemLayout:I

    return p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)I
    .locals 0

    .line 61
    iget p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mListItemLayout:I

    return p0
.end method

.method static synthetic access$1502(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1602(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1702(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)Landroid/os/Message;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)Landroid/os/Message;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)Landroid/content/DialogInterface;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)I
    .locals 0

    .line 61
    iget p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mListLayout:I

    return p0
.end method

.method private adjustPadding(ZZLandroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 4

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 548
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->nubia_button_bg:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 550
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 555
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-nez p1, :cond_5

    .line 556
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 559
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->isCenterAlertDialog()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p4, :cond_5

    .line 560
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_5

    if-nez p2, :cond_5

    .line 562
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 565
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_center_alert_dialog_message_vertical_margin_bottom:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 568
    invoke-virtual {p1, v3, p0, v3, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 569
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 573
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->isCenterAlertDialog()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 574
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 577
    iget-object p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_center_alert_dialog_message_vertical_margin_bottom:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 579
    invoke-virtual {p1, v3, p2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 580
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 581
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->isCenterAlertDialog()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p4, :cond_3

    .line 582
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 583
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 586
    iget-object p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_alert_dialog_context_notitle_margin_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 588
    invoke-virtual {p1, v3, p2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 589
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->nubia_title_content_divider:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 594
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIsContentDividerVisible:Z

    if-eqz p0, :cond_4

    move v0, v3

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 222
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 226
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 227
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 230
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 231
    invoke-static {v3}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 3

    .line 852
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x10

    .line 853
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 857
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->isCenterAlertDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_center_alert_dialog_button_width_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 859
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_center_alert_dialog_button_horizontal_margin:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 861
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_alert_dialog_button_width_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 862
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_alert_dialog_button_horizontal_margin_1:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 864
    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x0

    .line 865
    invoke-virtual {v0, p0, v1, p0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 866
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private isCenterAlertDialog()Z
    .locals 1

    .line 601
    iget p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mAlertDialogLayout:I

    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->nubia_alert_dialog_holo_center:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private layoutButtons(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 5

    .line 870
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 871
    invoke-virtual {p2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    .line 872
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 873
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 877
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->isCenterAlertDialog()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 878
    iget-object v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_center_alert_dialog_button_width_2:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 879
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_center_alert_dialog_button_horizontal_margin:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 880
    invoke-virtual {v0, p0, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 881
    invoke-virtual {v1, v3, v3, p0, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 883
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_alert_dialog_button_width_2:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 884
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_alert_dialog_button_horizontal_margin_2:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 885
    div-int/lit8 v4, p0, 0x2

    invoke-virtual {v0, p0, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 886
    invoke-virtual {v1, v4, v3, p0, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 888
    :goto_0
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 889
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 891
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    .line 768
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 771
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private resetDialogButtonStyle()V
    .locals 2

    .line 1313
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 1314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 1315
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1317
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1318
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1319
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1320
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mNubiaMiddleButtonBgID:I

    .line 1321
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 1322
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 1323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1324
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1325
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1326
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1327
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private selectContentView()I
    .locals 3

    .line 249
    iget v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 250
    iget p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mAlertDialogLayout:I

    return p0

    .line 252
    :cond_0
    iget v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v0

    .line 256
    :cond_1
    iget p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mAlertDialogLayout:I

    return p0
.end method

.method private setBackground(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 15

    move-object v0, p0

    .line 915
    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_dialog_background_transparent:I

    .line 916
    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_dialog_background_transparent:I

    .line 917
    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_dialog_background_transparent:I

    .line 918
    sget v4, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_dialog_background_transparent:I

    const/4 v5, 0x4

    .line 928
    new-array v6, v5, [Landroid/view/View;

    .line 929
    new-array v7, v5, [Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p5, :cond_0

    .line 935
    aput-object p1, v6, v9

    .line 936
    aput-boolean v9, v7, v9

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v9

    .line 945
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-ne v11, v12, :cond_1

    move-object v11, v13

    goto :goto_1

    :cond_1
    move-object/from16 v11, p2

    :goto_1
    aput-object v11, v6, v10

    .line 946
    iget-object v11, v0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v11, :cond_2

    move v11, v8

    goto :goto_2

    :cond_2
    move v11, v9

    :goto_2
    aput-boolean v11, v7, v10

    add-int/lit8 v11, v10, 0x1

    if-eqz p6, :cond_3

    .line 950
    aput-object p3, v6, v11

    .line 951
    iget-boolean v12, v0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mForceInverseBackground:Z

    aput-boolean v12, v7, v11

    add-int/lit8 v11, v10, 0x2

    :cond_3
    if-eqz p7, :cond_4

    .line 956
    aput-object p4, v6, v11

    .line 957
    aput-boolean v8, v7, v11

    :cond_4
    move v10, v9

    move v11, v10

    move-object v12, v13

    :goto_3
    if-ge v9, v5, :cond_a

    .line 962
    aget-object v14, v6, v9

    if-nez v14, :cond_5

    goto :goto_7

    :cond_5
    if-eqz v12, :cond_9

    if-nez v10, :cond_7

    if-eqz v11, :cond_6

    move v10, v1

    goto :goto_4

    :cond_6
    move v10, v2

    .line 969
    :goto_4
    invoke-virtual {v12, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    :cond_7
    if-eqz v11, :cond_8

    move v10, v3

    goto :goto_5

    :cond_8
    move v10, v4

    .line 971
    :goto_5
    invoke-virtual {v12, v10}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_6
    move v10, v8

    .line 977
    :cond_9
    aget-boolean v11, v7, v9

    move-object v12, v14

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_a
    if-eqz v12, :cond_f

    if-eqz v10, :cond_d

    .line 982
    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_dialog_background_transparent:I

    .line 983
    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_dialog_background_transparent:I

    .line 984
    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_dialog_background_transparent:I

    if-eqz v11, :cond_b

    if-eqz p7, :cond_c

    move v1, v2

    goto :goto_8

    :cond_b
    move v1, v3

    .line 988
    :cond_c
    :goto_8
    invoke-virtual {v12, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a

    .line 991
    :cond_d
    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_dialog_background_transparent:I

    .line 992
    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_dialog_background_transparent:I

    if-eqz v11, :cond_e

    goto :goto_9

    :cond_e
    move v1, v2

    .line 993
    :goto_9
    invoke-virtual {v12, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 997
    :cond_f
    :goto_a
    iget-object v1, v0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_10

    .line 998
    iget-object v2, v0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_10

    .line 999
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1000
    invoke-virtual {v1, v13}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1001
    iget v0, v0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mCheckedItem:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_10

    .line 1003
    invoke-virtual {v1, v0, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1004
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_10
    return-void
.end method

.method private setDivider(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .line 535
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-nez p1, :cond_2

    .line 536
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->nubia_title_content_divider:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 538
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIsContentDividerVisible:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private setupButtons()Z
    .locals 11

    .line 780
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->button1:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 781
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v3

    goto :goto_0

    .line 786
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositiveTextColor:I

    if-eqz v0, :cond_1

    .line 788
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 790
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v2

    .line 794
    :goto_0
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcn/nubia/redmagickyi/main/R$id;->button2:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 795
    iget-object v5, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 797
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 798
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 800
    :cond_2
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 801
    iget v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegativeTextColor:I

    if-eqz v4, :cond_3

    .line 802
    iget-object v5, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 804
    :cond_3
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    .line 809
    :goto_1
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcn/nubia/redmagickyi/main/R$id;->button3:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 810
    iget-object v5, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 813
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 815
    :cond_4
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutralTextColor:I

    if-eqz v4, :cond_5

    .line 817
    iget-object v5, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 819
    :cond_5
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    .line 825
    :goto_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->resetDialogButtonStyle()V

    if-ne v0, v2, :cond_6

    .line 829
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    .line 831
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_7
    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    .line 833
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_8
    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    .line 835
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4, v5}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->layoutButtons(Landroid/widget/Button;Landroid/widget/Button;)V

    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v3

    .line 841
    :goto_4
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcn/nubia/redmagickyi/main/R$id;->buttonPanel:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v0, :cond_b

    .line 843
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 845
    iget-object v5, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    .line 846
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object p0, v10, v3

    .line 845
    const-string v6, "setCloseOnTouchOutsideIfNotSet"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcn/nubia/redmagickyi/commonui/nubia/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    :cond_b
    return v0
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 5

    .line 732
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    .line 733
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 736
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 741
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 742
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 744
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 747
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 748
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 749
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 750
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 751
    iget-object v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 755
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget p1, Lcn/nubia/redmagickyi/main/R$id;->nubia_center_title_content_divider:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 757
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 761
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setupCustomView()Z
    .locals 7

    .line 605
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 607
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    iget v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewLayoutResId:I

    if-eqz v1, :cond_1

    .line 610
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 611
    iget v3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 617
    invoke-static {v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 618
    :cond_3
    iget-object v3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v4, 0x20000

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v2, :cond_6

    .line 623
    iget-object v3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->custom:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 624
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v1, :cond_5

    .line 627
    iget v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewSpacingLeft:I

    iget v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewSpacingTop:I

    iget v5, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewSpacingRight:I

    iget v6, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 631
    :cond_5
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p0, :cond_7

    .line 632
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_6
    const/16 p0, 0x8

    .line 635
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    :goto_1
    return v2
.end method

.method private setupDecor()V
    .locals 5

    .line 471
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->nubia_parentPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 474
    new-instance v2, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$2;

    invoke-direct {v2, p0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$2;-><init>(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 v2, 0x1

    .line 486
    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 487
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 489
    iget v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mParentPanelLeft:I

    iget v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mParentPanelTop:I

    iget v3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mParentPanelRight:I

    iget v4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mParentPanelBottom:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 492
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mMaxHeightRatio:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    .line 493
    instance-of v2, v1, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;

    if-eqz v2, :cond_1

    .line 494
    move-object v2, v1

    check-cast v2, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogLinearLayout;->setMaxHeightRatio(F)V

    goto :goto_0

    .line 495
    :cond_1
    instance-of v2, v1, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogCenterLinearLayout;

    if-eqz v2, :cond_2

    .line 496
    move-object v2, v1

    check-cast v2, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogCenterLinearLayout;

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/DialogCenterLinearLayout;->setMaxHeightRatio(F)V

    .line 500
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mMatchParentWidth:Z

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 501
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 502
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 503
    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 504
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)Z
    .locals 8

    .line 644
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 646
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 649
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 652
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget p1, Lcn/nubia/redmagickyi/main/R$id;->title_template:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 653
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 655
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcn/nubia/redmagickyi/main/R$id;->icon:I

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 657
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_d

    .line 660
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcn/nubia/redmagickyi/main/R$id;->alertTitle:I

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 662
    iget-object v6, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcn/nubia/redmagickyi/main/R$id;->alertChoiceTitle:I

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 666
    iget-object v6, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIsSingleChoiceDialog:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIsMultiChoiceDialog:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 687
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 688
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 690
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 691
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 670
    :cond_5
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 671
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 673
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 674
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    :cond_7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 679
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_alert_dialog_title_choice_vertical_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 681
    iget-object v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_alert_dialog_title_choice_vertical_margin_bottom:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 683
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setupTitle: verMarginTop = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", verMarginBottom = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AlertController"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 685
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    :cond_8
    :goto_1
    iget p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconId:I

    if-eqz p1, :cond_9

    .line 699
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 700
    :cond_9
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_a

    .line 701
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 705
    :cond_a
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    .line 706
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 707
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 708
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 709
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    .line 706
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 710
    :cond_b
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    .line 711
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 712
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 713
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 714
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    .line 711
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 716
    :cond_c
    :goto_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    move v3, v5

    goto :goto_4

    .line 721
    :cond_d
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 722
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 723
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 724
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    return v3
.end method

.method private setupView()V
    .locals 10

    .line 509
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->nubia_animPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->animPanel:Landroid/view/View;

    .line 511
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 512
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 514
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->buttonPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 515
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setupButtons()Z

    move-result v8

    .line 517
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->topPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 518
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)Z

    move-result v6

    .line 520
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->customPanel:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/FrameLayout;

    .line 521
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setupCustomView()Z

    move-result v7

    .line 523
    invoke-direct {p0, v8, v7, v2, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->adjustPadding(ZZLandroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    move-object v1, p0

    move-object v3, v0

    move-object v4, v9

    .line 525
    invoke-direct/range {v1 .. v8}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setBackground(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 527
    invoke-direct {p0, v0, v9}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setDivider(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 450
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0

    .line 452
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0

    .line 454
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method public getIconAttributeResId(I)I
    .locals 2

    .line 434
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 435
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 436
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 444
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public installContent()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 242
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->selectContentView()I

    move-result v0

    .line 243
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 244
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setupView()V

    .line 245
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setupDecor()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 462
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 467
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method resetNubiaAlertDialogLayout()V
    .locals 1

    .line 1295
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->nubia_alert_dialog_holo:I

    iput v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mAlertDialogLayout:I

    .line 1296
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->nubia_select_dialog_holo:I

    iput v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mListLayout:I

    .line 1297
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->nubia_select_dialog_multichoice_holo:I

    iput v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mMultiChoiceItemLayout:I

    .line 1298
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->nubia_select_dialog_singlechoice_holo:I

    iput v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mSingleChoiceItemLayout:I

    .line 1299
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->nubia_select_dialog_item_holo:I

    iput v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mListItemLayout:I

    return-void
.end method

.method setAlertDialogLayout(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mAlertDialogLayout:I

    return-void
.end method

.method public setAnimPanelBackground(I)V
    .locals 2

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAnimPanelBackground: colorId = [0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]  animPanel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->animPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->animPanel:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 899
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 338
    iget-object p4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 343
    iput-object p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 344
    iput-object p4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    .line 355
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 347
    :cond_2
    iput-object p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 348
    iput-object p4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 351
    :cond_3
    iput-object p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 352
    iput-object p4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0

    .line 319
    iput p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPanelLayoutHint:I

    return-void
.end method

.method public setButtonTextColor(II)V
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 362
    iput p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonPositiveTextColor:I

    goto :goto_0

    .line 371
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 365
    :cond_1
    iput p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNegativeTextColor:I

    goto :goto_0

    .line 368
    :cond_2
    iput p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mButtonNeutralTextColor:I

    :goto_0
    return-void
.end method

.method public setContentDivider(Z)V
    .locals 0

    .line 531
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIsContentDividerVisible:Z

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 398
    iput p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconId:I

    .line 400
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 404
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 415
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 416
    iput v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconId:I

    .line 418
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 420
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 422
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0

    .line 440
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mForceInverseBackground:Z

    return-void
.end method

.method public setMatchParentWidth(Z)V
    .locals 0

    .line 380
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mMatchParentWidth:Z

    return-void
.end method

.method public setMaxHeightRatio(F)V
    .locals 0

    .line 376
    iput p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mMaxHeightRatio:F

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 278
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 279
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setNubiaButtonBackground(III)V
    .locals 0

    .line 1307
    iput p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1308
    iput p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mNubiaMiddleButtonBgID:I

    .line 1309
    iput p3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mNubiaRightButtonBgID:I

    return-void
.end method

.method public setParentPanelMargin(IIII)V
    .locals 0

    .line 384
    iput p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mParentPanelLeft:I

    .line 385
    iput p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mParentPanelTop:I

    .line 386
    iput p3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mParentPanelRight:I

    .line 387
    iput p4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mParentPanelBottom:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 260
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 261
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 265
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mView:Landroid/view/View;

    .line 288
    iput p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x0

    .line 289
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 297
    iput p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewLayoutResId:I

    .line 298
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 307
    iput p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x1

    .line 308
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewSpacingSpecified:Z

    .line 309
    iput p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewSpacingLeft:I

    .line 310
    iput p3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewSpacingTop:I

    .line 311
    iput p4, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewSpacingRight:I

    .line 312
    iput p5, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->mViewSpacingBottom:I

    return-void
.end method
