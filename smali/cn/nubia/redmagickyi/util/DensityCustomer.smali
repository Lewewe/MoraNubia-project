.class public Lcn/nubia/redmagickyi/util/DensityCustomer;
.super Ljava/lang/Object;
.source "DensityCustomer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DensityCustomer"

.field private static final TARGET_DENSITY:F = 3.0f

.field private static final TARGET_HEIGHT_PX:I = 0x960

.field private static custom:Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;

.field private static final lock:Ljava/lang/Object;

.field private static params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[F>;"
        }
    .end annotation
.end field

.field private static sNoncompatDensity:F

.field private static sNoncompatScaledDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/util/DensityCustomer;->params:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/util/DensityCustomer;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()F
    .locals 1

    .line 23
    sget v0, Lcn/nubia/redmagickyi/util/DensityCustomer;->sNoncompatScaledDensity:F

    return v0
.end method

.method static synthetic access$002(F)F
    .locals 0

    .line 23
    sput p0, Lcn/nubia/redmagickyi/util/DensityCustomer;->sNoncompatScaledDensity:F

    return p0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 23
    sget-object v0, Lcn/nubia/redmagickyi/util/DensityCustomer;->params:Ljava/util/Map;

    return-object v0
.end method

.method public static getDefaultDensityDpi()I
    .locals 1

    .line 172
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    return v0
.end method

.method public static getTargetDensity()F
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    return v0
.end method

.method public static getTargetDensityDpi()I
    .locals 1

    const/16 v0, 0x1e0

    return v0
.end method

.method public static initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    if-nez p0, :cond_0

    .line 165
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    const/16 v0, 0x1e0

    .line 167
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    return-object p0
.end method

.method public static initDensity(Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 7

    if-eqz p0, :cond_3

    .line 127
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 128
    sget-object v1, Lcn/nubia/redmagickyi/util/DensityCustomer;->params:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 129
    sget-object v1, Lcn/nubia/redmagickyi/util/DensityCustomer;->params:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 130
    sget-object v3, Lcn/nubia/redmagickyi/util/DensityCustomer;->params:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 131
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v5

    .line 132
    aget v2, v5, v2

    .line 133
    aget v4, v5, v4

    .line 136
    sget-object v5, Lcn/nubia/redmagickyi/util/DensityCustomer;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 137
    :try_start_0
    sget-object v6, Lcn/nubia/redmagickyi/util/DensityCustomer;->custom:Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;

    if-nez v6, :cond_0

    .line 138
    new-instance v6, Lcn/nubia/redmagickyi/util/DensityCustomer$2;

    invoke-direct {v6}, Lcn/nubia/redmagickyi/util/DensityCustomer$2;-><init>()V

    sput-object v6, Lcn/nubia/redmagickyi/util/DensityCustomer;->custom:Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;

    .line 145
    :cond_0
    sget-object v6, Lcn/nubia/redmagickyi/util/DensityCustomer;->custom:Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;

    invoke-interface {v6}, Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;->getCustomTargetDensity()Ljava/lang/Float;

    move-result-object v6

    if-nez v6, :cond_2

    const/high16 v6, 0x44480000    # 800.0f

    if-le v2, v4, :cond_1

    int-to-float v2, v2

    goto :goto_0

    :cond_1
    int-to-float v2, v4

    :goto_0
    div-float/2addr v2, v6

    goto :goto_1

    .line 152
    :cond_2
    sget-object v2, Lcn/nubia/redmagickyi/util/DensityCustomer;->custom:Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;

    invoke-interface {v2}, Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;->getCustomTargetDensity()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 154
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iput v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v1

    mul-float/2addr v3, v2

    .line 156
    iput v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 157
    iput v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 154
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-object p0
.end method

.method public static initDensity(Landroid/app/Activity;)Landroid/util/DisplayMetrics;
    .locals 2

    .line 90
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Application;)Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 93
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/util/DisplayMetrics;->density:F

    .line 94
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 95
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static initDensity(Landroid/app/Application;)Landroid/util/DisplayMetrics;
    .locals 6

    if-eqz p0, :cond_3

    .line 40
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 41
    sget v1, Lcn/nubia/redmagickyi/util/DensityCustomer;->sNoncompatDensity:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 42
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcn/nubia/redmagickyi/util/DensityCustomer;->sNoncompatDensity:F

    .line 43
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v1, Lcn/nubia/redmagickyi/util/DensityCustomer;->sNoncompatScaledDensity:F

    .line 44
    new-instance v1, Lcn/nubia/redmagickyi/util/DensityCustomer$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/util/DensityCustomer$1;-><init>(Landroid/app/Application;)V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 65
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object p0

    const/4 v1, 0x0

    .line 66
    aget v2, p0, v1

    const/4 v3, 0x1

    .line 67
    aget p0, p0, v3

    .line 69
    sget-object v4, Lcn/nubia/redmagickyi/util/DensityCustomer;->custom:Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;

    invoke-interface {v4}, Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;->getCustomTargetDensity()Ljava/lang/Float;

    move-result-object v4

    if-nez v4, :cond_2

    const/high16 v4, 0x44480000    # 800.0f

    if-le v2, p0, :cond_1

    int-to-float p0, v2

    goto :goto_0

    :cond_1
    int-to-float p0, p0

    :goto_0
    div-float/2addr p0, v4

    goto :goto_1

    .line 76
    :cond_2
    sget-object p0, Lcn/nubia/redmagickyi/util/DensityCustomer;->custom:Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;->getCustomTargetDensity()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 78
    :goto_1
    iput p0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 79
    sget v2, Lcn/nubia/redmagickyi/util/DensityCustomer;->sNoncompatScaledDensity:F

    sget v4, Lcn/nubia/redmagickyi/util/DensityCustomer;->sNoncompatDensity:F

    div-float/2addr v2, v4

    mul-float/2addr v2, p0

    iput v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr p0, v2

    float-to-int p0, p0

    .line 80
    iput p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Adjusted density is"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", scaledDensity is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", densityDpi is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "DensityCustomer"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object p0, Lcn/nubia/redmagickyi/util/DensityCustomer;->params:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [F

    sget v5, Lcn/nubia/redmagickyi/util/DensityCustomer;->sNoncompatDensity:F

    aput v5, v4, v1

    sget v1, Lcn/nubia/redmagickyi/util/DensityCustomer;->sNoncompatScaledDensity:F

    aput v1, v4, v3

    invoke-interface {p0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;
    .locals 2

    .line 114
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Application;)Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 117
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/util/DisplayMetrics;->density:F

    .line 118
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 119
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static initDensity(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2

    .line 102
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Application;)Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 105
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/util/DisplayMetrics;->density:F

    .line 106
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 107
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static setCustom(Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;)V
    .locals 0

    .line 188
    sput-object p0, Lcn/nubia/redmagickyi/util/DensityCustomer;->custom:Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;

    return-void
.end method
