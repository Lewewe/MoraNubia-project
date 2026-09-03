.class Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;
.super Ljava/lang/Object;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DigitalClockAmPm"
.end annotation


# instance fields
.field private final mAmPm:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_am_pm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;->mAmPm:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;->setIsMorning(Z)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;->setShowAmPm(Z)V

    return-void
.end method

.method private setIsMorning(Z)V
    .locals 1

    .line 54
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    aget-object p1, v0, p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setShowAmPm(Z)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/DigitalClock$DigitalClockAmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
