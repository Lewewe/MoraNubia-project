.class public Lcn/nubia/redmagickyi/user/widget/DatePickerView;
.super Landroid/widget/FrameLayout;
.source "DatePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/user/widget/DatePickerView$OnDateChangeListener;,
        Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;
    }
.end annotation


# static fields
.field public static DEFAULT_END_YEAR:I = 0x7f5

.field public static DEFAULT_START_YEAR:I = 0x7b2


# instance fields
.field public hasLeapMonth:Z

.field public isLeapMonth:Z

.field public isLunarMode:Z

.field public leapMonth:I

.field private mDay:I

.field private mDayLabel:Landroid/widget/TextView;

.field private mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

.field private mIsCN:Z

.field private mIs_JA_KO:Z

.field private mMaxDayOfMonth:I

.field private mMaxMonthOfYear:I

.field private mMonth:I

.field private mMonthLabel:Landroid/widget/TextView;

.field private mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

.field private mOnDateChangeListener:Lcn/nubia/redmagickyi/user/widget/DatePickerView$OnDateChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mYear:I

.field private mYearLabel:Landroid/widget/TextView;

.field private mYearView:Lcn/nubia/redmagickyi/user/widget/WheelView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLunarMode:Z

    .line 30
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->hasLeapMonth:Z

    .line 31
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->leapMonth:I

    .line 32
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLeapMonth:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLunarMode:Z

    .line 30
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->hasLeapMonth:Z

    .line 31
    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->leapMonth:I

    .line 32
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLeapMonth:Z

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->nubia_wheelview_middle_zone_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 74
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    const-string v0, "layout_inflater"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 77
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->nubia_date_picker:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 78
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->setBackgroundColor(I)V

    .line 79
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->nubia_year_label:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYearLabel:Landroid/widget/TextView;

    .line 80
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->nubia_month_label:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthLabel:Landroid/widget/TextView;

    .line 81
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->nubia_day_label:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    .line 83
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 84
    const-string/jumbo v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYearLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mIsCN:Z

    goto :goto_0

    .line 90
    :cond_0
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mIsCN:Z

    .line 93
    :goto_0
    const-string v0, "ja"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ko"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 100
    :cond_1
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mIs_JA_KO:Z

    goto :goto_2

    .line 95
    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYearLabel:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mIs_JA_KO:Z

    .line 103
    :goto_2
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mIsCN:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mIs_JA_KO:Z

    if-eqz p1, :cond_3

    goto :goto_3

    .line 108
    :cond_3
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->nubia_day_spinner:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/widget/WheelView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYearView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    .line 109
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->nubia_month_spinner:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/widget/WheelView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    .line 110
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->nubia_year_spinner:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/widget/WheelView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    goto :goto_4

    .line 104
    :cond_4
    :goto_3
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->nubia_day_spinner:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/widget/WheelView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    .line 105
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->nubia_month_spinner:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/widget/WheelView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    .line 106
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->nubia_year_spinner:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/user/widget/WheelView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYearView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    .line 112
    :goto_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYearView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    sget v0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->DEFAULT_START_YEAR:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMinValue(I)V

    .line 113
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYearView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    sget v0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->DEFAULT_END_YEAR:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMaxValue(I)V

    .line 114
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYearView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    new-instance v0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView$1;-><init>(Lcn/nubia/redmagickyi/user/widget/DatePickerView;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/redmagickyi/user/widget/WheelView$OnValueChangeListener;)V

    .line 133
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-static {}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getTwoDigitFormatter()Lcn/nubia/redmagickyi/user/widget/WheelView$Formatter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setFormatter(Lcn/nubia/redmagickyi/user/widget/WheelView$Formatter;)V

    .line 134
    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 135
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    .line 137
    aget-object v0, p1, p2

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xc

    if-eqz v0, :cond_6

    .line 138
    :goto_5
    array-length v0, p1

    if-ge p2, v0, :cond_5

    add-int/lit8 v0, p2, 0x1

    .line 139
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, p2

    move p2, v0

    goto :goto_5

    .line 141
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMinValue(I)V

    .line 142
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMaxValue(I)V

    goto :goto_6

    .line 144
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMinValue(I)V

    .line 145
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMaxValue(I)V

    .line 146
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    sget-object p2, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->MONTHS_SHORT:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 149
    :goto_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    new-instance p2, Lcn/nubia/redmagickyi/user/widget/DatePickerView$2;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView$2;-><init>(Lcn/nubia/redmagickyi/user/widget/DatePickerView;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/redmagickyi/user/widget/WheelView$OnValueChangeListener;)V

    .line 167
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-static {}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getTwoDigitFormatter()Lcn/nubia/redmagickyi/user/widget/WheelView$Formatter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setFormatter(Lcn/nubia/redmagickyi/user/widget/WheelView$Formatter;)V

    .line 168
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    new-instance p2, Lcn/nubia/redmagickyi/user/widget/DatePickerView$3;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView$3;-><init>(Lcn/nubia/redmagickyi/user/widget/DatePickerView;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/redmagickyi/user/widget/WheelView$OnValueChangeListener;)V

    .line 177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 178
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x5

    .line 179
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x0

    .line 178
    invoke-virtual {p0, p2, v0, p1, v1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->update(IIILcn/nubia/redmagickyi/user/widget/DatePickerView$OnDateChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLunarMode:Z

    .line 30
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->hasLeapMonth:Z

    .line 31
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->leapMonth:I

    .line 32
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLeapMonth:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLunarMode:Z

    .line 30
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->hasLeapMonth:Z

    .line 31
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->leapMonth:I

    .line 32
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLeapMonth:Z

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/user/widget/DatePickerView;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/user/widget/DatePickerView;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/user/widget/DatePickerView;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    return p1
.end method

.method private static getCurrentYear()I
    .locals 2

    .line 193
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final adjustDayDisplayerValues()V
    .locals 5

    .line 230
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    .line 231
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    invoke-static {v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonth(I)I

    move-result v1

    .line 235
    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    aget-object v0, v0, v2

    sget-object v2, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 237
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    invoke-static {v0, v1, v3}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 238
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    add-int/lit8 v4, v1, 0x1

    if-lt v0, v4, :cond_1

    .line 239
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    invoke-static {v1, v0, v2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    .line 240
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    if-ge v0, v1, :cond_2

    .line 241
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    add-int/2addr v0, v3

    .line 242
    invoke-static {v1, v0, v2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_2
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    add-int/2addr v1, v3

    .line 245
    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    array-length v1, v0

    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 249
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMinValue(I)V

    .line 251
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMaxDayOfMonth:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMaxValue(I)V

    .line 252
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 254
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMaxDayOfMonth:I

    add-int/lit8 v2, v1, -0x1

    if-le v0, v2, :cond_3

    sub-int/2addr v1, v3

    .line 255
    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    .line 257
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setValue(I)V

    return-void
.end method

.method public final adjustMaxDay()V
    .locals 4

    .line 205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 206
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    .line 207
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    .line 208
    iget v3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 209
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 210
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    if-le v1, v0, :cond_0

    .line 211
    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    :cond_0
    return-void
.end method

.method public final adjustMonthDisplayerValues()V
    .locals 3

    .line 216
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->solarMonthTolunarMonth(I)[Ljava/lang/String;

    move-result-object v0

    .line 217
    array-length v1, v0

    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMaxMonthOfYear:I

    .line 218
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMinValue(I)V

    .line 220
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMaxValue(I)V

    .line 221
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 222
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMaxMonthOfYear:I

    add-int/lit8 v2, v1, -0x1

    if-le v0, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 223
    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    .line 225
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonth(I)I

    .line 226
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setValue(I)V

    return-void
.end method

.method public final getDayOfMonth()I
    .locals 0

    .line 371
    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    return p0
.end method

.method public final getDayWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;
    .locals 0

    .line 383
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    return-object p0
.end method

.method public final getMonth()I
    .locals 0

    .line 367
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getValue()I

    move-result p0

    return p0
.end method

.method public final getMonthWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;
    .locals 0

    .line 379
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    return-object p0
.end method

.method public final getYear()I
    .locals 0

    .line 363
    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    return p0
.end method

.method public final getYearWheelView()Lcn/nubia/redmagickyi/user/widget/WheelView;
    .locals 0

    .line 375
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYearView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    return-object p0
.end method

.method public final notifyDateChanged()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mOnDateChangeListener:Lcn/nubia/redmagickyi/user/widget/DatePickerView$OnDateChangeListener;

    if-eqz v0, :cond_0

    .line 262
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    iget v3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcn/nubia/redmagickyi/user/widget/DatePickerView$OnDateChangeListener;->onDateChanged(Lcn/nubia/redmagickyi/user/widget/DatePickerView;III)V

    .line 264
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYearView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->invalidate()V

    .line 265
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->invalidate()V

    .line 266
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 198
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 199
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getMiddleTop()I

    move-result v0

    .line 200
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getMiddleBottom()I

    move-result v1

    int-to-float v4, v0

    .line 201
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getRight()I

    move-result v0

    int-to-float v5, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 354
    check-cast p1, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;

    .line 355
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 356
    iget v0, p1, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;->sYear:I

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    .line 357
    iget v0, p1, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;->sMonth:I

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    .line 358
    iget p1, p1, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;->sDay:I

    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    .line 359
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->updateSpinners()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 348
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 349
    new-instance v1, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    iget v3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    invoke-direct {v1, v0, v2, v3, p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-object v1
.end method

.method public setDayLabelVisible(Z)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 388
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 391
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final update(IIILcn/nubia/redmagickyi/user/widget/DatePickerView$OnDateChangeListener;)V
    .locals 0

    .line 272
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    .line 273
    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    .line 274
    iput p3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    .line 275
    iput-object p4, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mOnDateChangeListener:Lcn/nubia/redmagickyi/user/widget/DatePickerView$OnDateChangeListener;

    .line 276
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->updateSpinners()V

    return-void
.end method

.method public final updateDate(III)V
    .locals 1

    .line 183
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    if-eq v0, p3, :cond_1

    .line 184
    :cond_0
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    .line 185
    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    .line 186
    iput p3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    .line 187
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->updateSpinners()V

    .line 188
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->notifyDateChanged()V

    :cond_1
    return-void
.end method

.method public final updateDaySpinners()V
    .locals 5

    .line 325
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLunarMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 326
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 327
    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    if-le v2, v0, :cond_0

    .line 330
    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    .line 333
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setValue(I)V

    goto :goto_0

    .line 335
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 336
    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    .line 337
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    .line 338
    iget v4, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 339
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 340
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMinValue(I)V

    .line 341
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMaxDayOfMonth:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMaxValue(I)V

    .line 342
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDayView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mDay:I

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setValue(I)V

    :goto_0
    return-void
.end method

.method public final updateSpinners()V
    .locals 3

    .line 283
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    const/4 v1, 0x1

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    .line 284
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLeapMonth:Z

    sub-int/2addr v0, v2

    .line 285
    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    .line 288
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYearView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setValue(I)V

    .line 289
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->updateDaySpinners()V

    .line 291
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLunarMode:Z

    if-ne v0, v1, :cond_5

    .line 292
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mYear:I

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->leapMonth:I

    if-lez v0, :cond_2

    .line 295
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLeapMonth:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLeapMonth:Z

    goto :goto_0

    .line 297
    :cond_1
    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    if-gt v2, v0, :cond_3

    sub-int/2addr v2, v1

    .line 298
    iput v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    goto :goto_0

    .line 301
    :cond_2
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    .line 304
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMaxMonthOfYear:I

    .line 306
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    if-le v1, v0, :cond_4

    .line 307
    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    .line 310
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setValue(I)V

    goto :goto_1

    .line 312
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMinValue(I)V

    .line 313
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setMaxValue(I)V

    .line 315
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    if-lt v0, v2, :cond_6

    .line 316
    iput v2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    .line 319
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonthView:Lcn/nubia/redmagickyi/user/widget/WheelView;

    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->mMonth:I

    add-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setValue(I)V

    :goto_1
    return-void
.end method
