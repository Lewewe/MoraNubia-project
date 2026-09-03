.class public Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;
.super Landroid/widget/CompoundButton;
.source "RedmagicKyiCheckBox.java"


# instance fields
.field private mIsCheck:Z

.field private mIsPressing:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->mIsCheck:Z

    return p0
.end method

.method public isPressed()Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->mIsPressing:Z

    return p0
.end method

.method public isPressing()Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->mIsPressing:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->mIsPressing:Z

    goto :goto_0

    .line 83
    :cond_1
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->mIsPressing:Z

    .line 84
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->toggle()V

    .line 85
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->mIsPressing:Z

    goto :goto_0

    .line 80
    :cond_2
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->mIsPressing:Z

    :goto_0
    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->mIsCheck:Z

    if-eq v0, p1, :cond_0

    .line 35
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->mIsCheck:Z

    .line 36
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 40
    sget p1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_checkbox_big_on:I

    goto :goto_0

    :cond_1
    sget p1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_checkbox_big_off:I

    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setBackgroundResource(I)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    return-void
.end method

.method public setPressing(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->mIsPressing:Z

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setChecked(Z)V

    return-void
.end method
