.class public Lcn/nubia/redmagickyi/care/ui/RedMagicCare;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "RedMagicCare.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/care/ui/RedMagicCare$OnIgnoreListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "RedMagicCare"


# instance fields
.field private back:Landroid/widget/ImageView;

.field private redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

.field private redmagicCareTips:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;

.field private titleTips:Landroid/widget/TextView;

.field private tooltipWindow:Lcn/nubia/redmagickyi/care/view/TooltipWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    .line 23
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/care/ui/RedMagicCare;Ljava/lang/Class;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->switchFragment(Ljava/lang/Class;)V

    return-void
.end method

.method private switchFragment(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/care/ui/RedMagicCare$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare$1;-><init>(Lcn/nubia/redmagickyi/care/ui/RedMagicCare;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    return-void
.end method


# virtual methods
.method public Ignore()V
    .locals 2

    .line 139
    sget v0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "user_type"

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    const-string v0, "user_birthday"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "has_set_not_first"

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-class v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->switchFragment(Ljava/lang/Class;)V

    return-void
.end method

.method public ShowTips(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 110
    new-instance v0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;

    invoke-direct {v0, p0, p3, p2}, Lcn/nubia/redmagickyi/care/view/TooltipWindow;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->tooltipWindow:Lcn/nubia/redmagickyi/care/view/TooltipWindow;

    const/4 p0, 0x1

    .line 111
    invoke-virtual {v0, p1, p0, p0}, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->showToolTip(Landroid/view/View;IZ)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->titleTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->titleTips:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->hideTips()V

    .line 90
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 0

    .line 106
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 38
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->model_name:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->title:Landroid/widget/TextView;

    .line 39
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->back:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->redmagic_care_tips:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->redmagicCareTips:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tips_care_title:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->titleTips:Landroid/widget/TextView;

    .line 45
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->titleTips:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 96
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    if-ne p1, v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->onBackPressed()V

    goto :goto_1

    .line 98
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->redmagic_care_tips:I

    if-ne p1, v0, :cond_2

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->titleTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->activity_red_magic_care:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->setContentView(I)V

    .line 32
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->container:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->createChildFragmentMananger(I)V

    .line 33
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->initView()V

    .line 34
    const-class p1, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->switchFragment(Ljava/lang/Class;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 73
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    return-void
.end method
