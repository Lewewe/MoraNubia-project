.class public Lcn/nubia/redmagickyi/ar/beans/ARItemBeans;
.super Ljava/lang/Object;
.source "ARItemBeans.java"


# static fields
.field public static final REDMAGIC_AR_CAMERA:I = 0x1

.field public static final REDMAGIC_LIVE:I


# instance fields
.field private describ:Ljava/lang/String;

.field private thumbnail:Landroid/graphics/drawable/Drawable;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescrib()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARItemBeans;->describ:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARItemBeans;->thumbnail:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARItemBeans;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 14
    iget p0, p0, Lcn/nubia/redmagickyi/ar/beans/ARItemBeans;->type:I

    return p0
.end method

.method public setDescrib(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARItemBeans;->describ:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARItemBeans;->thumbnail:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARItemBeans;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcn/nubia/redmagickyi/ar/beans/ARItemBeans;->type:I

    return-void
.end method
