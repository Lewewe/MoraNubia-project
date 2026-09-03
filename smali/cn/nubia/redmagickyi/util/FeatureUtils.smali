.class public Lcn/nubia/redmagickyi/util/FeatureUtils;
.super Ljava/lang/Object;
.source "FeatureUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/FeatureUtils$ZteFeature;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "ro.vendor.feature."

.field private static final TAG:Ljava/lang/String; = "FeatureUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ro.vendor.feature."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getZteFeature(Ljava/lang/String;I)I
    .locals 1

    .line 28
    const-string v0, ""

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/FeatureUtils$ZteFeature;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/FeatureUtils;->adjustKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/SystemPropertiesUtils;->getProp(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 33
    :cond_0
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/FeatureUtils$ZteFeature;->access$100(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getZteFeature(Ljava/lang/String;J)J
    .locals 1

    .line 38
    const-string v0, ""

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/FeatureUtils$ZteFeature;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/FeatureUtils;->adjustKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/SystemPropertiesUtils;->getProp(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    .line 43
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/FeatureUtils$ZteFeature;->access$200(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getZteFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 18
    const-string v0, ""

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/FeatureUtils$ZteFeature;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/FeatureUtils;->adjustKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/SystemPropertiesUtils;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/FeatureUtils$ZteFeature;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getZteFeature(Ljava/lang/String;Z)Z
    .locals 1

    .line 48
    const-string v0, ""

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/FeatureUtils$ZteFeature;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/FeatureUtils;->adjustKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/SystemPropertiesUtils;->getProp(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 53
    :cond_0
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/FeatureUtils$ZteFeature;->access$300(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
