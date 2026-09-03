.class public Lcn/nubia/redmagickyi/commonui/zte/widget/AlertDialogLayout;
.super Landroid/widget/LinearLayout;
.source "AlertDialogLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/commonui/zte/widget/AlertDialogLayout$OnLayoutChangeListener;
    }
.end annotation


# instance fields
.field private onLayoutChangeListener:Lcn/nubia/redmagickyi/commonui/zte/widget/AlertDialogLayout$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/widget/AlertDialogLayout;->onLayoutChangeListener:Lcn/nubia/redmagickyi/commonui/zte/widget/AlertDialogLayout$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/commonui/zte/widget/AlertDialogLayout$OnLayoutChangeListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 34
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setOnLayoutChangeListener(Lcn/nubia/redmagickyi/commonui/zte/widget/AlertDialogLayout$OnLayoutChangeListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/widget/AlertDialogLayout;->onLayoutChangeListener:Lcn/nubia/redmagickyi/commonui/zte/widget/AlertDialogLayout$OnLayoutChangeListener;

    return-void
.end method
