.class public Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;
.super Ljava/lang/Object;
.source "ARImageBeans.java"


# instance fields
.field private flag:I

.field private hasCheck:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private is3D:I

.field private is_quick:I

.field private itemName:Ljava/lang/String;

.field private live_type:I

.field private pos:I

.field private scence_name:Ljava/lang/String;

.field private skin_id:I

.field private thumbnail_path:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->hasCheck:Z

    return-void
.end method


# virtual methods
.method public getFlag()I
    .locals 0

    .line 92
    iget p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->flag:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIs3D()I
    .locals 0

    .line 68
    iget p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->is3D:I

    return p0
.end method

.method public getIs_quick()I
    .locals 0

    .line 19
    iget p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->is_quick:I

    return p0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->itemName:Ljava/lang/String;

    return-object p0
.end method

.method public getLive_type()I
    .locals 0

    .line 100
    iget p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->live_type:I

    return p0
.end method

.method public getPos()I
    .locals 0

    .line 28
    iget p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->pos:I

    return p0
.end method

.method public getScence_name()Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->scence_name:Ljava/lang/String;

    return-object p0
.end method

.method public getSkin_id()I
    .locals 0

    .line 76
    iget p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->skin_id:I

    return p0
.end method

.method public getThumbnail_path()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->thumbnail_path:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->type:Ljava/lang/String;

    return-object p0
.end method

.method public isHasCheck()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->hasCheck:Z

    return p0
.end method

.method public setFlag(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->flag:I

    return-void
.end method

.method public setHasCheck(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->hasCheck:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIs3D(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->is3D:I

    return-void
.end method

.method public setIs_quick(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->is_quick:I

    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->itemName:Ljava/lang/String;

    return-void
.end method

.method public setLive_type(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->live_type:I

    return-void
.end method

.method public setPos(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->pos:I

    return-void
.end method

.method public setScence_name(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->scence_name:Ljava/lang/String;

    return-void
.end method

.method public setSkin_id(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->skin_id:I

    return-void
.end method

.method public setThumbnail_path(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->thumbnail_path:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->type:Ljava/lang/String;

    return-void
.end method
