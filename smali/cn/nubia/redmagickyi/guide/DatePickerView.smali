.class public Lcn/nubia/redmagickyi/guide/DatePickerView;
.super Landroid/widget/LinearLayout;
.source "DatePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;,
        Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;
    }
.end annotation


# static fields
.field private static final DAY_28:I = 0x1c

.field private static final DAY_29:I = 0x1d

.field private static final DAY_30:I = 0x1e

.field private static final DAY_31:I = 0x1f

.field private static final YEAR_100:I = 0x64

.field private static final YEAR_4:I = 0x4

.field private static final YEAR_400:I = 0x190

.field private static final YEAR_MAX:I

.field private static final YEAR_MIN:I = 0x79e


# instance fields
.field private context:Landroid/content/Context;

.field private day:I

.field private dayAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

.field private dayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private month:I

.field private monthAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

.field private monthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onSelectedChangedListener:Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;

.field onWheelScrollListener:Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;

.field private wheelViewDay:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

.field private wheelViewMonth:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

.field private wheelViewYear:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

.field private year:I

.field private yearAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

.field private yearList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/guide/DatePickerView;->YEAR_MAX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/guide/DatePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/guide/DatePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x79e

    .line 29
    iput p2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->year:I

    const/4 p2, 0x1

    .line 30
    iput p2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->month:I

    .line 31
    iput p2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->day:I

    .line 34
    new-instance p2, Ljava/util/ArrayList;

    sget p3, Lcn/nubia/redmagickyi/guide/DatePickerView;->YEAR_MAX:I

    add-int/lit16 p3, p3, -0x79d

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->yearList:Ljava/util/ArrayList;

    .line 35
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xc

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->monthList:Ljava/util/ArrayList;

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0x1f

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->dayList:Ljava/util/ArrayList;

    .line 151
    new-instance p2, Lcn/nubia/redmagickyi/guide/DatePickerView$4;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/guide/DatePickerView$4;-><init>(Lcn/nubia/redmagickyi/guide/DatePickerView;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->onWheelScrollListener:Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;

    .line 57
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->context:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/guide/DatePickerView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->year:I

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/guide/DatePickerView;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->year:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/guide/DatePickerView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->month:I

    return p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/guide/DatePickerView;III)[I
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/guide/DatePickerView;->parseInt2Array(III)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/guide/DatePickerView;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->month:I

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/guide/DatePickerView;)[I
    .locals 0

    .line 23
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->getSelectDate()[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->monthAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/guide/DatePickerView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->setTextViewStyle()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/guide/DatePickerView;II)I
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/guide/DatePickerView;->calcDay(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/guide/DatePickerView;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->dayList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/guide/DatePickerView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->dayList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/guide/DatePickerView;I)Ljava/util/ArrayList;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->getDayList(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->dayAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/guide/DatePickerView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->day:I

    return p0
.end method

.method static synthetic access$602(Lcn/nubia/redmagickyi/guide/DatePickerView;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->day:I

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/wheelview/WheelView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewDay:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->yearAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->onSelectedChangedListener:Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;

    return-object p0
.end method

.method private calcDay(II)I
    .locals 0

    const/4 p0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x1e

    goto :goto_1

    .line 278
    :pswitch_1
    rem-int/lit16 p2, p1, 0x190

    invoke-static {p2, p0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result p2

    if-nez p2, :cond_1

    rem-int/lit8 p2, p1, 0x64

    invoke-static {p2, p0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result p2

    if-nez p2, :cond_0

    rem-int/lit8 p1, p1, 0x4

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x1c

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x1d

    goto :goto_1

    :pswitch_2
    const/16 p0, 0x1f

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getDayList(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 243
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-ge v1, v2, :cond_1

    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private getSelectDate()[I
    .locals 2

    .line 236
    iget v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->year:I

    iget v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->month:I

    iget p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->day:I

    filled-new-array {v0, v1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 4

    const/16 v0, 0x79e

    .line 62
    :goto_0
    sget v1, Lcn/nubia/redmagickyi/guide/DatePickerView;->YEAR_MAX:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->yearList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    const/16 v1, 0xd

    if-ge v0, v1, :cond_1

    .line 66
    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->monthList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    .line 69
    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->dayList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 72
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->widget_date_picker:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wheelViewYear:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewYear:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    .line 76
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wheelViewMonth:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewMonth:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    .line 77
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wheelViewDay:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewDay:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewYear:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setCyclic(Z)V

    .line 80
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewMonth:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setCyclic(Z)V

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewDay:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setCyclic(Z)V

    .line 83
    new-instance v0, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;-><init>(Lcn/nubia/redmagickyi/guide/DatePickerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->yearAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    .line 84
    new-instance v0, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;-><init>(Lcn/nubia/redmagickyi/guide/DatePickerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->monthAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    .line 85
    new-instance v0, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;-><init>(Lcn/nubia/redmagickyi/guide/DatePickerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->dayAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->yearAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->yearList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->setList(Ljava/util/ArrayList;)V

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->monthAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->setList(Ljava/util/ArrayList;)V

    .line 89
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->dayAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->setList(Ljava/util/ArrayList;)V

    .line 91
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewYear:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->yearAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setViewAdapter(Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;)V

    .line 92
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewMonth:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->monthAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setViewAdapter(Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;)V

    .line 93
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewDay:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->dayAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setViewAdapter(Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;)V

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewYear:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    new-instance v1, Lcn/nubia/redmagickyi/guide/DatePickerView$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/guide/DatePickerView$1;-><init>(Lcn/nubia/redmagickyi/guide/DatePickerView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->addChangingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelChangedListener;)V

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewMonth:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    new-instance v1, Lcn/nubia/redmagickyi/guide/DatePickerView$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/guide/DatePickerView$2;-><init>(Lcn/nubia/redmagickyi/guide/DatePickerView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->addChangingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelChangedListener;)V

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewDay:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    new-instance v1, Lcn/nubia/redmagickyi/guide/DatePickerView$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/guide/DatePickerView$3;-><init>(Lcn/nubia/redmagickyi/guide/DatePickerView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->addChangingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelChangedListener;)V

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewYear:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->onWheelScrollListener:Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->addScrollingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;)V

    .line 147
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewMonth:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->onWheelScrollListener:Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->addScrollingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;)V

    .line 148
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewDay:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->onWheelScrollListener:Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->addScrollingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;)V

    return-void
.end method

.method private parseInt2Array(III)[I
    .locals 0

    .line 232
    filled-new-array {p1, p2, p3}, [I

    move-result-object p0

    return-object p0
.end method

.method private setTextViewSize(Ljava/lang/String;Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;)V
    .locals 8

    .line 170
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->getTextViews()Ljava/util/ArrayList;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_4

    .line 176
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 177
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    .line 179
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_0

    .line 180
    sget v5, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->selected_text_color:I

    goto :goto_1

    :cond_0
    sget v5, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->un_selected_text_color:I

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v4, :cond_1

    .line 181
    sget v5, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->selected_text_size:I

    goto :goto_2

    :cond_1
    sget v5, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->un_selected_text_size:I

    :goto_2
    int-to-float v5, v5

    invoke-virtual {v2, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const v5, 0x3f9d70a4    # 1.23f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_2

    move v7, v5

    goto :goto_3

    :cond_2
    move v7, v6

    .line 182
    :goto_3
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setScaleX(F)V

    if-eqz v4, :cond_3

    goto :goto_4

    :cond_3
    move v5, v6

    .line 183
    :goto_4
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setScaleY(F)V

    const/16 v4, 0x11

    .line 184
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 185
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setTextViewStyle()V
    .locals 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->yearAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/guide/DatePickerView;->setTextViewSize(Ljava/lang/String;Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->monthAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/guide/DatePickerView;->setTextViewSize(Ljava/lang/String;Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->day:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->dayAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->setTextViewSize(Ljava/lang/String;Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;)V

    return-void
.end method


# virtual methods
.method public addOnSelectedChangingListener(Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->onSelectedChangedListener:Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;

    return-void
.end method

.method public setDate(III)V
    .locals 3

    .line 198
    sget v0, Lcn/nubia/redmagickyi/guide/DatePickerView;->YEAR_MAX:I

    const/16 v1, 0x79e

    if-gt p1, v0, :cond_0

    if-ge p1, v1, :cond_1

    :cond_0
    move p1, v1

    :cond_1
    const/16 v0, 0xc

    const/4 v2, 0x1

    if-gt p2, v0, :cond_2

    if-ge p2, v2, :cond_3

    :cond_2
    move p2, v2

    .line 204
    :cond_3
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/guide/DatePickerView;->calcDay(II)I

    move-result v0

    if-gt p3, v0, :cond_4

    if-ge p3, v2, :cond_5

    :cond_4
    move p3, v2

    .line 209
    :cond_5
    iput p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->year:I

    .line 210
    iput p2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->month:I

    .line 211
    iput p3, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->day:I

    .line 213
    iget-object p2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->yearAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    sub-int/2addr p1, v1

    iput p1, p2, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->currentIndex:I

    .line 214
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->monthAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    iget p2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->month:I

    sub-int/2addr p2, v2

    iput p2, p1, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->currentIndex:I

    .line 215
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->dayAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    iget p2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->day:I

    sub-int/2addr p2, v2

    iput p2, p1, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->currentIndex:I

    .line 216
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewYear:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object p2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->yearAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    iget p2, p2, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->currentIndex:I

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setCurrentItem(I)V

    .line 217
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewMonth:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object p2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->monthAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    iget p2, p2, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->currentIndex:I

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setCurrentItem(I)V

    .line 218
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->wheelViewDay:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView;->dayAdapter:Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    iget p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->currentIndex:I

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setCurrentItem(I)V

    return-void
.end method
