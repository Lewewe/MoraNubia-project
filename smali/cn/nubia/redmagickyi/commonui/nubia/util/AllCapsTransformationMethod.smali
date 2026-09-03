.class public Lcn/nubia/redmagickyi/commonui/nubia/util/AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source "AllCapsTransformationMethod.java"

# interfaces
.implements Lcn/nubia/redmagickyi/commonui/nubia/util/TransformationMethod2;


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaWidget"


# instance fields
.field private mEnabled:Z

.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    .line 42
    iget-boolean p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/AllCapsTransformationMethod;->mEnabled:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 45
    :cond_1
    const-string p0, "NubiaWidget"

    const-string p2, "Caller did not enable length changes; not transforming text"

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setLengthChangesAllowed(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/AllCapsTransformationMethod;->mEnabled:Z

    return-void
.end method
