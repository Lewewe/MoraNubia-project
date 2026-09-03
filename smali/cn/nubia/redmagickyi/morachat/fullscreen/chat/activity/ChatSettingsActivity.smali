.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "ChatSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final REQ_CAMERA_SELECT_PHOTO:I = 0x2

.field public static final REQ_FROM_CHAT:I = 0x1

.field private static TAG:Ljava/lang/String; = "ChatSettingsActivity"

.field private static mAlbumIntent:Landroid/content/Intent;


# instance fields
.field private back:Landroid/widget/ImageView;

.field private cbShowModel:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field private ivBg:Landroid/widget/ImageView;

.field private layoutResetAlbum:Landroid/view/View;

.field private layoutSelectAlbum:Landroid/view/View;

.field private layoutShowModel:Landroid/view/View;

.field private rvQuick:Landroidx/recyclerview/widget/RecyclerView;

.field private rvQuickMask:Landroid/view/View;

.field private tvSelectAlbum:Landroid/widget/TextView;

.field private tvShowModel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->rvQuick:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->ivBg:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getImageUriFromResult(IILandroid/content/Intent;)I
    .locals 1

    const/4 p0, 0x2

    const/4 v0, -0x1

    if-ne p1, p0, :cond_1

    if-ne p2, v0, :cond_0

    .line 223
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 225
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->setBackground(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private initBg()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->layoutResetAlbum:Landroid/view/View;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->isHasCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$4;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$4;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->getBackground(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;)V

    return-void
.end method

.method private initData()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->initShowModel()V

    .line 120
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->initBg()V

    return-void
.end method

.method private initShowModel()V
    .locals 3

    .line 124
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->AIAGENT_SWITCH_SKIN_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;)Z

    move-result v0

    .line 125
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->cbShowModel:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 126
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->rvQuick:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v2, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    .line 127
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->rvQuickMask:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->rvQuick:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->setEnable(Z)V

    return-void
.end method

.method public static openAlbum(Landroid/app/Activity;)V
    .locals 3

    .line 196
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->mAlbumIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->mAlbumIntent:Landroid/content/Intent;

    .line 202
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->mAlbumIntent:Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->mAlbumIntent:Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->mAlbumIntent:Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateUIByOrientation(Landroid/content/res/Configuration;)V
    .locals 4

    if-nez p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 146
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 148
    :goto_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->head_layout:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 150
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_32_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v2, p1

    .line 151
    iget p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq p1, v2, :cond_2

    .line 152
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->initBg()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, -0x1

    .line 191
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->setResult(I)V

    .line 192
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 56
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->back:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_bg:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->ivBg:Landroid/widget/ImageView;

    .line 59
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_show_model:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->layoutShowModel:Landroid/view/View;

    .line 60
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_show_model:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->tvShowModel:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 63
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_show_model:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->cbShowModel:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 64
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_select_album:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->layoutSelectAlbum:Landroid/view/View;

    .line 67
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_select_album:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->tvSelectAlbum:Landroid/widget/TextView;

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 70
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_reset_album:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->layoutResetAlbum:Landroid/view/View;

    .line 71
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getSkinIdList()Ljava/util/List;

    move-result-object v0

    .line 74
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->recyclerview_mask:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->rvQuickMask:Landroid/view/View;

    .line 75
    new-instance v2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 81
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->rvQuickMask:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->quick_recycleview:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->rvQuick:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 84
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->rvQuick:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$2;

    invoke-direct {v2, p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 96
    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->rvQuick:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 97
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$3;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;)V

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->setClickInterface(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;)V

    .line 111
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->rvQuick:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->updateUIByOrientation(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 209
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 210
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->getImageUriFromResult(IILandroid/content/Intent;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 213
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->initBg()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 216
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->initBg()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->cbShowModel:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    if-ne p1, v0, :cond_2

    .line 176
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->AIAGENT_SWITCH_SKIN_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {p1, v0, p2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    .line 177
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->rvQuick:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    .line 178
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->rvQuickMask:Landroid/view/View;

    if-eqz p2, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->rvQuick:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->setEnable(Z)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 161
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    if-ne p1, v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->onBackPressed()V

    goto :goto_0

    .line 163
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_show_model:I

    if-ne p1, v0, :cond_1

    .line 164
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->cbShowModel:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    goto :goto_0

    .line 165
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_select_album:I

    if-ne p1, v0, :cond_2

    .line 166
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->openAlbum(Landroid/app/Activity;)V

    goto :goto_0

    .line 167
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_reset_album:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 168
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->setBackground(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->initBg()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 185
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 186
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->updateUIByOrientation(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_fs_chat_activity_settings:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->initView()V

    .line 52
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->initData()V

    return-void
.end method
