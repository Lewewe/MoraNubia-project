.class Lcn/nubia/redmagickyi/util/DensityCustomer$1;
.super Ljava/lang/Object;
.source "DensityCustomer.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Application;)Landroid/util/DisplayMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$application:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/DensityCustomer$1;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 47
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/DensityCustomer$1;->val$application:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 49
    iget p1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/DensityCustomer;->access$002(F)F

    .line 50
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 51
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->access$100()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 54
    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->access$000()F

    move-result v0

    aput v0, p0, p1

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
