.class public Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "AlarmTypeSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$OnAlarmTypeSelectListener;
    }
.end annotation


# static fields
.field private static final ITEM_IMAGE:[I

.field private static final ITEM_IMAGE_SELECT:[I

.field private static final ITEM_TEXT:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = "AlarmTypeSelectDialog"


# instance fields
.field private activity:Landroid/app/Activity;

.field private btnCancel:Landroid/widget/Button;

.field private btnCommit:Landroid/widget/Button;

.field private ivClose:Landroid/widget/ImageView;

.field private ivSelectedBg:Landroid/widget/ImageView;

.field private ivSelectedIcon:Landroid/widget/ImageView;

.field private mPos:I

.field private myCircleMenuLayout:Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;

.field private onAlarmTypeSelectListener:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$OnAlarmTypeSelectListener;

.field private typeText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 27
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$array;->alarm_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->ITEM_TEXT:[Ljava/lang/String;

    .line 28
    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_date:I

    sget v2, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_getup:I

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_meal:I

    sget v4, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_nap:I

    sget v5, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_normal:I

    sget v6, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_sleep:I

    sget v7, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_sport:I

    sget v8, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_study:I

    sget v9, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_water:I

    filled-new-array/range {v1 .. v9}, [I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->ITEM_IMAGE:[I

    .line 34
    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_date_selected:I

    sget v2, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_getup_selected:I

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_meal_selected:I

    sget v4, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_nap_selected:I

    sget v5, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_normal_selected:I

    sget v6, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_sleep_selected:I

    sget v7, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_sport_selected:I

    sget v8, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_study_selected:I

    sget v9, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojinaozhong_water_selected:I

    filled-new-array/range {v1 .. v9}, [I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->ITEM_IMAGE_SELECT:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$OnAlarmTypeSelectListener;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->mPos:I

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->activity:Landroid/app/Activity;

    .line 64
    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->onAlarmTypeSelectListener:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$OnAlarmTypeSelectListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->mPos:I

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->ITEM_TEXT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->typeText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->mPos:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->ivSelectedIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->ivSelectedBg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500()[I
    .locals 1

    .line 24
    sget-object v0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->ITEM_IMAGE_SELECT:[I

    return-object v0
.end method


# virtual methods
.method public getContentView()I
    .locals 0

    .line 86
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->alarm_type_dialog_view:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 2

    .line 91
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->ivClose:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->alarm_select_bg:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->ivSelectedBg:Landroid/widget/ImageView;

    .line 94
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->alarm_select_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->ivSelectedIcon:Landroid/widget/ImageView;

    .line 95
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->btnCancel:Landroid/widget/Button;

    .line 96
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->btnCancel:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 98
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_commit:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->btnCommit:Landroid/widget/Button;

    .line 100
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->btnCommit:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 102
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->btnCommit:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_type:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->typeText:Landroid/widget/TextView;

    .line 104
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->id_mymenulayout:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->myCircleMenuLayout:Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;

    .line 105
    sget-object v0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->ITEM_IMAGE:[I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->setMenuItemIconsAndTexts([I)V

    .line 106
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->myCircleMenuLayout:Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;

    new-instance v0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$1;-><init>(Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->setOnMenuItemListener(Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$OnMenuItemListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 74
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-eq p1, v0, :cond_2

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_commit:I

    if-ne p1, v0, :cond_3

    .line 77
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->onAlarmTypeSelectListener:Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$OnAlarmTypeSelectListener;

    if-eqz p1, :cond_1

    .line 78
    iget v0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->mPos:I

    invoke-interface {p1, v0}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$OnAlarmTypeSelectListener;->onAlarmtypeClick(I)V

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->dismiss()V

    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->dismiss()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog;->myCircleMenuLayout:Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;

    if-eqz p0, :cond_0

    add-int/lit8 p1, p1, -0x4

    .line 58
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->setAngle(I)V

    :cond_0
    return-void
.end method
