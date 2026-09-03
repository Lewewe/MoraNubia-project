.class public Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;
.super Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;
.source "DatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$OnDateSetListener;,
        Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;,
        Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnClickListener;
    }
.end annotation


# static fields
.field public static DEFAULT_END_YEAR:I = 0x7f5

.field public static DEFAULT_START_YEAR:I = 0x7b2

.field private static final LENGTH_LUNAR_DATE:I = 0x8

.field private static mIsCN:Z = false


# instance fields
.field private isCurrentMonthLeap:Z

.field private final mCallBack:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$OnDateSetListener;

.field private mCurrday:I

.field private mCurrmonth:I

.field private mCurryear:I

.field private final mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

.field private mFormatdateString:Ljava/lang/String;

.field private mLoadDayVlaue:I

.field private mLoadMonthVlaue:I

.field private mLoadYearVlaue:I

.field private mLunarDateLayout:Landroid/view/View;

.field private mLunarDay:I

.field private mLunarDayLabel:Ljava/lang/String;

.field private mLunarLabel:Landroid/widget/TextView;

.field private mLunarMonth:I

.field private mLunarMonthLabel:Ljava/lang/String;

.field private mLunarYear:I

.field private mLunarYearLabel:Ljava/lang/String;

.field private mOnClickListener:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnClickListener;

.field private mOnDateChangeListener:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;

.field private mSolarDay:I

.field private mSolarMonth:I

.field private mSolarYear:I

.field private mSwtichEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcn/nubia/redmagickyi/user/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mSwtichEnabled:Z

    .line 52
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setCancelable(Z)V

    .line 72
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 74
    iput-object p3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCallBack:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$OnDateSetListener;

    .line 75
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 76
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->getCurrentLanguage(Landroid/content/Context;)V

    .line 77
    const-string p1, "layout_inflater"

    .line 78
    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 79
    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->nubia_date_picker_dialog:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 83
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->nubia_lunar_date_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    .line 84
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->nubia_date_picker_view:I

    .line 85
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    iput-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    .line 86
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->nubia_lunar_textview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    .line 87
    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_lunar:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    sget-boolean p1, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mIsCN:Z

    if-nez p1, :cond_0

    .line 92
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setLunarLayoutVisiable(Z)V

    .line 95
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    new-instance p2, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$1;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$1;-><init>(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    if-nez p1, :cond_1

    .line 104
    new-instance p1, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-direct {p1, p0, v2}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;-><init>(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    .line 107
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->getTextRes()V

    .line 110
    iput p4, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadYearVlaue:I

    add-int/2addr p5, v0

    .line 111
    iput p5, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadMonthVlaue:I

    .line 112
    iput p6, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadDayVlaue:I

    .line 113
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setup()V

    .line 114
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnClickListener;

    if-nez p1, :cond_2

    .line 115
    new-instance p1, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnClickListener;

    invoke-direct {p1, p0, v2}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnClickListener;-><init>(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnClickListener;

    :cond_2
    const p1, 0x1040013

    .line 117
    invoke-virtual {p3, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnClickListener;

    const/4 p4, -0x1

    invoke-virtual {p0, p4, p1, p2}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p1, 0x1040000

    .line 120
    invoke-virtual {p3, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnClickListener;

    const/4 p3, -0x2

    .line 119
    invoke-virtual {p0, p3, p1, p2}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 121
    sget-boolean p1, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mIsCN:Z

    if-eqz p1, :cond_3

    .line 122
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->getSwitchStateFromSP()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mSwtichEnabled:Z

    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 64
    invoke-direct/range {v0 .. v6}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILcn/nubia/redmagickyi/user/widget/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->saveSwitchState()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)I
    .locals 0

    .line 17
    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurryear:I

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurryear:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)Lcn/nubia/redmagickyi/user/widget/DatePickerView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)I
    .locals 0

    .line 17
    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrmonth:I

    return p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrmonth:I

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)I
    .locals 0

    .line 17
    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrday:I

    return p0
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrday:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mSwtichEnabled:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;III)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setLunarTitleByValues(III)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 17
    sget-boolean v0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mIsCN:Z

    return v0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;III)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setSolarTitle(III)V

    return-void
.end method

.method private getCurrentLanguage(Landroid/content/Context;)V
    .locals 0

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 131
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 132
    const-string/jumbo p1, "zh"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 133
    sput-boolean p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mIsCN:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 135
    sput-boolean p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mIsCN:Z

    :goto_0
    return-void
.end method

.method private getTextRes()V
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getTextRes(Landroid/content/Context;)V

    .line 566
    sget-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->YEAR:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarYearLabel:Ljava/lang/String;

    .line 567
    sget-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->MONTH:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarMonthLabel:Ljava/lang/String;

    .line 568
    sget-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->DAY:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarDayLabel:Ljava/lang/String;

    return-void
.end method

.method private resolveLunarDate(Ljava/lang/String;)V
    .locals 4

    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-ne v3, v0, :cond_0

    .line 429
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarYear:I

    const/4 v0, 0x6

    .line 430
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarMonth:I

    .line 431
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarDay:I

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarYear:I

    const/4 v0, 0x7

    .line 440
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarMonth:I

    const/16 v1, 0x9

    .line 441
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarDay:I

    :goto_0
    return-void
.end method

.method private resolveSolarDate(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 446
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mSolarYear:I

    const/4 v0, 0x6

    .line 447
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mSolarMonth:I

    const/16 v1, 0x8

    .line 448
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mSolarDay:I

    return-void
.end method

.method private saveSwitchState()V
    .locals 3

    .line 527
    sget-boolean v0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mIsCN:Z

    if-nez v0, :cond_0

    return-void

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "datePickerSwitch"

    const/4 v2, 0x0

    .line 531
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 532
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 533
    const-string v1, "switchState"

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mSwtichEnabled:Z

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 534
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setLunarTitleByLunarMonth(IIIZ)V
    .locals 2

    .line 399
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    if-ne p2, v0, :cond_0

    if-eqz p4, :cond_0

    .line 403
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 404
    invoke-static {p2, v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 406
    :cond_0
    invoke-static {p2, v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 409
    :cond_1
    invoke-static {p2, v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object p2

    .line 411
    :goto_0
    iget-object p4, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    invoke-static {p4}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x2

    .line 412
    invoke-static {p3, v0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object p3

    .line 413
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_date_lunar_title:I

    .line 414
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 413
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 415
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setLunarTitleByValues(III)V
    .locals 3

    .line 371
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_2

    add-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p2, -0x1

    .line 377
    invoke-static {v2, v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    add-int/lit8 v0, p2, -0x1

    .line 379
    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_1
    invoke-static {p2, v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_2
    invoke-static {p2, v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v0

    .line 388
    :goto_0
    invoke-static {p1, p2, p3}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    .line 389
    invoke-static {p2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    .line 390
    invoke-static {p3, v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object p3

    .line 391
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->nubia_date_lunar_title:I

    .line 392
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v0, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 391
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSolarTitle(III)V
    .locals 3

    .line 419
    invoke-static {p1, p2, p3}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    sget-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->MONTHS_LONG:[Ljava/lang/String;

    add-int/lit8 p2, p2, -0x1

    aget-object p2, v1, p2

    .line 421
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->nubia_date_solar_title:I

    .line 422
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 421
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 423
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setup()V
    .locals 4

    .line 144
    sget-boolean v0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mSwtichEnabled:Z

    if-nez v1, :cond_0

    .line 145
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadMonthVlaue:I

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadDayVlaue:I

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setSolarTitle(III)V

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadMonthVlaue:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadDayVlaue:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->update(IIILcn/nubia/redmagickyi/user/widget/DatePickerView$OnDateChangeListener;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 149
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadMonthVlaue:I

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadDayVlaue:I

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setSolarTitle(III)V

    .line 150
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadMonthVlaue:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLoadDayVlaue:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->update(IIILcn/nubia/redmagickyi/user/widget/DatePickerView$OnDateChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 6

    .line 160
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCallBack:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_5

    .line 161
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->clearFocus()V

    .line 163
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mSwtichEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 164
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getYear()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurryear:I

    .line 165
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getMonth()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrmonth:I

    .line 166
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getDayOfMonth()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrday:I

    .line 169
    :try_start_0
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurryear:I

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 172
    :goto_0
    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;

    move-result-object v4

    .line 173
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v4

    .line 175
    iget v5, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrmonth:I

    aget-object v4, v4, v5

    sget-object v5, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v1, :cond_1

    move v2, v1

    :cond_1
    if-eqz v3, :cond_2

    .line 180
    iget v3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrmonth:I

    if-ge v3, v0, :cond_3

    add-int/2addr v3, v1

    .line 181
    iput v3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrmonth:I

    goto :goto_1

    .line 184
    :cond_2
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrmonth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrmonth:I

    .line 187
    :cond_3
    :goto_1
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurryear:I

    iget v3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrmonth:I

    iget v4, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrday:I

    add-int/2addr v4, v1

    invoke-static {v0, v3, v4}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    .line 189
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->resolveSolarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    :goto_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCallBack:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$OnDateSetListener;

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    iget v3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mSolarYear:I

    iget v4, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mSolarMonth:I

    sub-int/2addr v4, v1

    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mSolarDay:I

    invoke-interface {v0, v2, v3, v4, p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$OnDateSetListener;->onDateSet(Lcn/nubia/redmagickyi/user/widget/DatePickerView;III)V

    goto :goto_3

    .line 198
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCallBack:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$OnDateSetListener;

    iget-object v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    .line 199
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getYear()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    .line 200
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getMonth()I

    move-result v4

    sub-int/2addr v4, v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    .line 201
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getDayOfMonth()I

    move-result p0

    .line 199
    invoke-interface {v0, v2, v3, v4, p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$OnDateSetListener;->onDateSet(Lcn/nubia/redmagickyi/user/widget/DatePickerView;III)V

    :cond_5
    :goto_3
    return-void
.end method

.method private updateLunarBySolar()V
    .locals 7

    .line 333
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarYear:I

    sget v1, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->DEFAULT_START_YEAR:I

    if-ge v0, v1, :cond_0

    .line 334
    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurryear:I

    goto :goto_0

    .line 335
    :cond_0
    sget v1, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->DEFAULT_END_YEAR:I

    if-le v0, v1, :cond_1

    .line 336
    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurryear:I

    goto :goto_0

    .line 338
    :cond_1
    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurryear:I

    .line 341
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarMonth:I

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrmonth:I

    .line 342
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarDay:I

    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrday:I

    const/16 v1, 0x14

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_2

    sub-int/2addr v0, v1

    .line 345
    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrmonth:I

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 349
    :goto_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getYearWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 350
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurryear:I

    invoke-static {v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->solarMonthTolunarMonth(I)[Ljava/lang/String;

    move-result-object v1

    .line 351
    iget-object v5, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 352
    iget-object v5, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMinValue(I)V

    .line 353
    iget-object v5, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;

    move-result-object v5

    array-length v6, v1

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMaxValue(I)V

    .line 354
    iget-object v5, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 356
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurryear:I

    iget v5, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrmonth:I

    invoke-static {v1, v5, v0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v1

    .line 358
    iget-object v5, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getDayWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 359
    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getDayWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMinValue(I)V

    .line 360
    iget-object v3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getDayWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;

    move-result-object v3

    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMaxValue(I)V

    .line 361
    iget-object v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getDayWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurryear:I

    iget v3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarMonth:I

    iget v4, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrday:I

    iget-object v5, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->update(IIILcn/nubia/redmagickyi/user/widget/DatePickerView$OnDateChangeListener;)V

    .line 365
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarYear:I

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mCurrmonth:I

    iget v3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarDay:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->setLunarTitleByLunarMonth(IIIZ)V

    return-void
.end method


# virtual methods
.method public SetSwitchState(Z)V
    .locals 0

    .line 469
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mSwtichEnabled:Z

    return-void
.end method

.method public getCurrentMonthIsLeap()Z
    .locals 0

    .line 474
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    return p0
.end method

.method public getDatePicker()Lcn/nubia/redmagickyi/user/widget/DatePickerView;
    .locals 0

    .line 140
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    return-object p0
.end method

.method public getDateString(Z)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 478
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    .line 480
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getYear()I

    move-result v1

    .line 481
    iget-object v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getMonth()I

    move-result v2

    .line 482
    iget-object v3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getDayOfMonth()I

    move-result v3

    if-eqz p1, :cond_4

    .line 485
    invoke-static {v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonth(I)I

    move-result p1

    const/4 v4, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    .line 488
    :goto_0
    iget-object v5, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;

    move-result-object v5

    .line 489
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v5

    .line 491
    aget-object v5, v5, v2

    sget-object v6, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v4, :cond_1

    .line 493
    iput-boolean v4, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    :cond_1
    if-eqz v0, :cond_2

    if-ge v2, p1, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/2addr v3, v4

    .line 505
    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 507
    :cond_4
    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSwitchState()Z
    .locals 0

    .line 465
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mSwtichEnabled:Z

    return p0
.end method

.method public getSwitchStateFromSP()Z
    .locals 2

    .line 521
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 522
    const-string v0, "datePickerSwitch"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 523
    const-string v0, "switchState"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 220
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 221
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    const-string v0, "PICKER"

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    .line 213
    invoke-super {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    const-string v1, "PICKER"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .line 208
    invoke-super {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->onStop()V

    return-void
.end method

.method public setLunarLayoutVisiable(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 513
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 516
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setYearMinMaxValue(II)V
    .locals 4

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, p1

    :goto_0
    if-gt v1, p2, :cond_0

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 553
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 554
    sput p1, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->DEFAULT_START_YEAR:I

    .line 555
    sput p2, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->DEFAULT_END_YEAR:I

    .line 556
    sput p1, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->DEFAULT_START_YEAR:I

    .line 557
    sput p2, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->DEFAULT_END_YEAR:I

    .line 558
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getYearWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getYearWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMinValue(I)V

    .line 560
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getYearWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMaxValue(I)V

    return-void
.end method

.method public updateDate(III)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->updateDate(III)V

    return-void
.end method
