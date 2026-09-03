.class public Lcn/nubia/redmagickyi/skin/bean/MotionBeans;
.super Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;
.source "MotionBeans.java"


# instance fields
.field private checkBoxCheck:Z

.field private progress:I

.field private selected:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;D)V
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p5}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;-><init>(IILjava/lang/String;D)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;)V
    .locals 6

    .line 12
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getTimeLength()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;-><init>(IILjava/lang/String;D)V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 0

    .line 28
    iget p0, p0, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->progress:I

    return p0
.end method

.method public isCheckBoxCheck()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->checkBoxCheck:Z

    return p0
.end method

.method public isSelected()Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->selected:Z

    return p0
.end method

.method public setCheckBoxCheck(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->checkBoxCheck:Z

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->progress:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/skin/bean/MotionBeans;->selected:Z

    return-void
.end method
