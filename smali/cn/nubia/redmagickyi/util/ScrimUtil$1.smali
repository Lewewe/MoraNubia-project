.class Lcn/nubia/redmagickyi/util/ScrimUtil$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "ScrimUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/ScrimUtil;->makeDefaultGradientScrimDrawable([I[FZ)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$colors:[I

.field final synthetic val$positions:[F

.field final synthetic val$vertical:Z


# direct methods
.method constructor <init>(Z[I[F)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/util/ScrimUtil$1;->val$vertical:Z

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/ScrimUtil$1;->val$colors:[I

    iput-object p3, p0, Lcn/nubia/redmagickyi/util/ScrimUtil$1;->val$positions:[F

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 18

    move-object/from16 v0, p0

    .line 22
    iget-boolean v1, v0, Lcn/nubia/redmagickyi/util/ScrimUtil$1;->val$vertical:Z

    if-eqz v1, :cond_0

    .line 23
    new-instance v1, Landroid/graphics/LinearGradient;

    move/from16 v2, p2

    int-to-float v6, v2

    iget-object v7, v0, Lcn/nubia/redmagickyi/util/ScrimUtil$1;->val$colors:[I

    iget-object v8, v0, Lcn/nubia/redmagickyi/util/ScrimUtil$1;->val$positions:[F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v1

    .line 25
    :cond_0
    new-instance v1, Landroid/graphics/LinearGradient;

    move/from16 v2, p1

    int-to-float v13, v2

    iget-object v15, v0, Lcn/nubia/redmagickyi/util/ScrimUtil$1;->val$colors:[I

    iget-object v0, v0, Lcn/nubia/redmagickyi/util/ScrimUtil$1;->val$positions:[F

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v10, v1

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v1
.end method
