.class public Lcn/nubia/redmagickyi/alarm/view/TimePickerView;
.super Landroid/widget/LinearLayout;
.source "TimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;,
        Lcn/nubia/redmagickyi/alarm/view/TimePickerView$OnSelectedChangedListener;
    }
.end annotation


# instance fields
.field private HOUR:I

.field private MINUTE:I

.field private context:Landroid/content/Context;

.field private hour:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hourAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

.field private hourValue:I

.field private minute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private minuteAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

.field private minuteValue:I

.field private onSelectedChangedListener:Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;

.field onWheelScrollListener:Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;

.field private wheelViewHour:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

.field private wheelViewMinute:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x17

    .line 26
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->HOUR:I

    const/16 p1, 0x3b

    .line 27
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->MINUTE:I

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourValue:I

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteValue:I

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x18

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hour:Ljava/util/ArrayList;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x3c

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minute:Ljava/util/ArrayList;

    .line 108
    new-instance p1, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$3;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$3;-><init>(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->onWheelScrollListener:Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x17

    .line 26
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->HOUR:I

    const/16 p2, 0x3b

    .line 27
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->MINUTE:I

    const/4 p2, 0x0

    .line 29
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourValue:I

    .line 30
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteValue:I

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0x18

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hour:Ljava/util/ArrayList;

    .line 33
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0x3c

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minute:Ljava/util/ArrayList;

    .line 108
    new-instance p2, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$3;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$3;-><init>(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->onWheelScrollListener:Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;

    .line 150
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->context:Landroid/content/Context;

    .line 151
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x17

    .line 26
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->HOUR:I

    const/16 p2, 0x3b

    .line 27
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->MINUTE:I

    const/4 p2, 0x0

    .line 29
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourValue:I

    .line 30
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteValue:I

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0x18

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hour:Ljava/util/ArrayList;

    .line 33
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0x3c

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minute:Ljava/util/ArrayList;

    .line 108
    new-instance p2, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$3;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$3;-><init>(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->onWheelScrollListener:Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;

    .line 156
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->context:Landroid/content/Context;

    .line 157
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0x17

    .line 26
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->HOUR:I

    const/16 p2, 0x3b

    .line 27
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->MINUTE:I

    const/4 p2, 0x0

    .line 29
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourValue:I

    .line 30
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteValue:I

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0x18

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hour:Ljava/util/ArrayList;

    .line 33
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0x3c

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minute:Ljava/util/ArrayList;

    .line 108
    new-instance p2, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$3;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$3;-><init>(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->onWheelScrollListener:Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;

    .line 162
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->context:Landroid/content/Context;

    .line 163
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)I
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourValue:I

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourValue:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->onSelectedChangedListener:Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)I
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteValue:I

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteValue:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;II)[I
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->parseInt2Array(II)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)[I
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->getSelectDate()[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->setTextViewStyle()V

    return-void
.end method

.method private getSelectDate()[I
    .locals 1

    .line 102
    iget v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourValue:I

    iget p0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteValue:I

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 45
    :goto_0
    iget v2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->HOUR:I

    if-gt v1, v2, :cond_0

    .line 46
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hour:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    :goto_1
    iget v1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->MINUTE:I

    if-gt v0, v1, :cond_1

    .line 49
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minute:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->widget_time_picker:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->hour_wheel:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->wheelViewHour:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    .line 56
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->minute_wheel:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->wheelViewMinute:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->wheelViewHour:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setCyclic(Z)V

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->wheelViewMinute:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setCyclic(Z)V

    .line 62
    new-instance v0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;-><init>(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    .line 63
    new-instance v0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;-><init>(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    .line 65
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hour:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;->setList(Ljava/util/ArrayList;)V

    .line 66
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minute:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;->setList(Ljava/util/ArrayList;)V

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->wheelViewHour:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setViewAdapter(Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->wheelViewMinute:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setViewAdapter(Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;)V

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->wheelViewHour:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    new-instance v1, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$1;-><init>(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->addChangingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelChangedListener;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->wheelViewMinute:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    new-instance v1, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$2;-><init>(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->addChangingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelChangedListener;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->wheelViewHour:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->onWheelScrollListener:Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->addScrollingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;)V

    .line 97
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->wheelViewMinute:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->onWheelScrollListener:Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->addScrollingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;)V

    return-void
.end method

.method private parseInt2Array(II)[I
    .locals 0

    .line 106
    filled-new-array {p1, p2}, [I

    move-result-object p0

    return-object p0
.end method

.method private setTextViewSize(Ljava/lang/String;Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;)V
    .locals 8

    .line 126
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->getTextViews()Ljava/util/ArrayList;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_4

    .line 133
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 134
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v4

    const/4 v5, 0x0

    .line 136
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_0

    .line 137
    sget v5, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->selected_text_color:I

    goto :goto_1

    :cond_0
    sget v5, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->un_selected_text_color:I

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v4, :cond_1

    .line 138
    sget v5, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->selected_text_size:I

    :goto_2
    int-to-float v5, v5

    goto :goto_3

    :cond_1
    sget v5, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;->un_selected_text_size:I

    goto :goto_2

    :goto_3
    invoke-virtual {v2, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const v5, 0x3f9d70a4    # 1.23f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_2

    move v7, v5

    goto :goto_4

    :cond_2
    move v7, v6

    .line 139
    :goto_4
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setScaleX(F)V

    if-eqz v4, :cond_3

    goto :goto_5

    :cond_3
    move v5, v6

    .line 140
    :goto_5
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setScaleY(F)V

    const/16 v4, 0x11

    .line 141
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 142
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method private setTextViewStyle()V
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->setTextViewSize(Ljava/lang/String;Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->setTextViewSize(Ljava/lang/String;Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;)V

    return-void
.end method


# virtual methods
.method public addOnSelectedChangingListener(Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->onSelectedChangedListener:Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;

    return-void
.end method

.method public setTime(II)V
    .locals 1

    .line 195
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourValue:I

    .line 196
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteValue:I

    .line 197
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    iput p1, v0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;->currentIndex:I

    .line 198
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    iput p2, p1, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;->currentIndex:I

    .line 199
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->wheelViewHour:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object p2, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->hourAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    iget p2, p2, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;->currentIndex:I

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setCurrentItem(I)V

    .line 200
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->wheelViewMinute:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->minuteAdapter:Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    iget p0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;->currentIndex:I

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setCurrentItem(I)V

    return-void
.end method
