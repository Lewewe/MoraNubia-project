.class Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;
.super Ljava/lang/Object;
.source "DigitalHumanEntranceCardLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayerAnimation"
.end annotation


# instance fields
.field private animValue:F

.field private animatorIn:Lcn/nubia/redmagickyi/util/Counter;

.field private animatorOut:Lcn/nubia/redmagickyi/util/Counter;

.field private isStateExpanded:Z

.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation$1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)V

    .line 350
    new-instance p1, Lcn/nubia/redmagickyi/util/Counter;

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/util/Counter;-><init>(Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v1, v2}, Lcn/nubia/redmagickyi/util/Counter;->setDuration(J)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->animatorIn:Lcn/nubia/redmagickyi/util/Counter;

    .line 351
    new-instance p1, Lcn/nubia/redmagickyi/util/Counter;

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/util/Counter;-><init>(Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;)V

    invoke-virtual {p1, v1, v2}, Lcn/nubia/redmagickyi/util/Counter;->setDuration(J)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->animatorOut:Lcn/nubia/redmagickyi/util/Counter;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;F)V
    .locals 0

    .line 337
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->onAnimationUpdate(F)V

    return-void
.end method

.method private onAnimationUpdate(F)V
    .locals 23

    move-object/from16 v9, p0

    move/from16 v10, p1

    .line 385
    iput v10, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->animValue:F

    .line 388
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$300(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Z

    move-result v0

    const/4 v1, -0x2

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x0

    .line 406
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-nez v0, :cond_0

    .line 389
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Root;->access$400()F

    move-result v0

    .line 390
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Root;->access$500()F

    move-result v1

    .line 391
    iget-object v2, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    .line 392
    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$600(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v2

    mul-float/2addr v0, v10

    .line 397
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    mul-float/2addr v1, v10

    .line 398
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v0, 0x800055

    .line 399
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v4, v7

    move-object v7, v8

    move-object v8, v12

    .line 391
    invoke-direct/range {v0 .. v8}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    .line 403
    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$600(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v1

    const v0, 0x800053

    .line 410
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v2, v3

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    .line 402
    invoke-direct/range {v0 .. v8}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 416
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->access$700()F

    move-result v0

    .line 417
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->access$800()F

    move-result v1

    .line 418
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->access$900()F

    move-result v2

    .line 419
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->access$1000()F

    move-result v3

    .line 420
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->access$1100()F

    move-result v4

    .line 421
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->access$1200()F

    move-result v5

    .line 422
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Icon;->access$1300()F

    move-result v6

    .line 423
    iget-object v7, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    .line 424
    invoke-static {v7}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$1400(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/widget/ImageView;

    move-result-object v7

    sub-float/2addr v1, v0

    mul-float/2addr v1, v10

    add-float/2addr v0, v1

    .line 425
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sub-float/2addr v3, v2

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    .line 426
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-float/2addr v5, v4

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    .line 427
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 430
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v7, v12

    move-object v8, v13

    .line 423
    invoke-direct/range {v0 .. v8}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 436
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->access$1500()F

    move-result v0

    .line 437
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->access$1600()F

    move-result v1

    .line 438
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->access$1700()F

    move-result v2

    .line 439
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->access$1800()F

    move-result v3

    .line 440
    iget-object v4, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    .line 441
    invoke-static {v4}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$1900(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/widget/TextView;

    move-result-object v4

    sub-float/2addr v1, v0

    mul-float/2addr v1, v10

    add-float/2addr v0, v1

    .line 444
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sub-float/2addr v3, v2

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    .line 447
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v12

    .line 440
    invoke-direct/range {v0 .. v8}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 451
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->access$2000()F

    move-result v0

    .line 452
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Text;->access$2100()F

    move-result v1

    .line 453
    iget-object v2, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$1900(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/widget/TextView;

    move-result-object v2

    sub-float/2addr v1, v0

    mul-float/2addr v1, v10

    add-float/2addr v0, v1

    invoke-virtual {v2, v11, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 457
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$2200(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v10

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 458
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$2200(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v12, 0x0

    cmpg-float v0, v0, v12

    const/16 v13, 0x8

    if-gtz v0, :cond_1

    .line 459
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$2200(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 461
    :cond_1
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$2200(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 463
    :goto_1
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->access$2300()F

    move-result v14

    .line 464
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->access$2400()F

    move-result v15

    .line 465
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->access$2500()F

    move-result v0

    .line 466
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->access$2600()F

    move-result v1

    .line 467
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->access$2700()F

    move-result v16

    .line 468
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->access$2800()F

    move-result v17

    .line 469
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->access$2900()F

    move-result v2

    .line 470
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->access$3000()F

    move-result v3

    .line 471
    iget-object v4, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    .line 472
    invoke-static {v4}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$2200(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v4

    sub-float v5, v15, v14

    mul-float/2addr v5, v10

    add-float/2addr v5, v14

    .line 473
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sub-float/2addr v1, v0

    mul-float/2addr v1, v10

    add-float v18, v0, v1

    .line 474
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sub-float v0, v17, v16

    mul-float/2addr v0, v10

    add-float v0, v16, v0

    .line 475
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sub-float/2addr v3, v2

    mul-float/2addr v3, v10

    add-float v19, v2, v3

    .line 478
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object v7, v8

    move-object/from16 v8, v20

    .line 471
    invoke-direct/range {v0 .. v8}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    cmpg-float v0, v10, v12

    if-gtz v0, :cond_2

    .line 484
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$3100(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 486
    :cond_2
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$3100(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 488
    :goto_2
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$100(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_expand_footer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 489
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->access$3200()F

    move-result v0

    sub-float/2addr v14, v0

    .line 490
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->access$3200()F

    move-result v0

    add-float v16, v16, v0

    sub-float v0, v15, v14

    mul-float/2addr v0, v10

    add-float/2addr v0, v14

    .line 493
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 494
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-float v17, v17, v16

    mul-float v17, v17, v10

    add-float v16, v16, v17

    .line 495
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 498
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    .line 491
    invoke-direct/range {v0 .. v8}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    div-float/2addr v15, v14

    .line 504
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->access$3300()F

    move-result v0

    div-float v1, v0, v15

    .line 506
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->access$3400()F

    move-result v2

    div-float v3, v2, v15

    .line 508
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Footer;->access$3500()F

    move-result v4

    .line 509
    iget-object v5, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    .line 510
    invoke-static {v5}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$3600(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/widget/ImageView;

    move-result-object v5

    sub-float/2addr v0, v1

    mul-float/2addr v0, v10

    add-float/2addr v1, v0

    .line 511
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sub-float/2addr v2, v3

    mul-float/2addr v2, v10

    add-float/2addr v3, v2

    .line 512
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 516
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v5, v14

    move-object v6, v15

    .line 509
    invoke-direct/range {v0 .. v8}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 522
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 523
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 524
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 525
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v10

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 526
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 527
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v12

    if-gtz v0, :cond_3

    .line 528
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 530
    :cond_3
    iget-object v0, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 532
    :goto_3
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Header;->access$3700()F

    move-result v0

    .line 533
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Header;->access$3800()F

    move-result v1

    .line 534
    iget-object v2, v9, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    .line 535
    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v2

    .line 536
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Header;->access$3900()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 537
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimationConstant$Header;->access$4000()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 538
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 541
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v10

    .line 534
    invoke-direct/range {v0 .. v8}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .line 549
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 550
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 551
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 554
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 555
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move p2, v0

    :cond_1
    if-eqz p4, :cond_2

    .line 558
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p3, v1, :cond_2

    .line 559
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    move p2, v0

    :cond_2
    if-eqz p5, :cond_3

    .line 562
    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p3, p4, :cond_3

    .line 563
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move p2, v0

    :cond_3
    if-eqz p6, :cond_4

    .line 566
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p3

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p3, p4, :cond_4

    .line 567
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    move p2, v0

    :cond_4
    if-eqz p7, :cond_5

    .line 570
    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p3, p4, :cond_5

    .line 571
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move p2, v0

    :cond_5
    if-eqz p7, :cond_6

    .line 574
    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p3, p4, :cond_6

    .line 575
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move p2, v0

    :cond_6
    if-eqz p8, :cond_8

    .line 579
    instance-of p3, p0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p3, :cond_7

    .line 580
    move-object p3, p0

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    iget p4, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p5

    if-eq p4, p5, :cond_8

    .line 581
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 584
    :cond_7
    instance-of p3, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p3, :cond_8

    .line 585
    move-object p3, p0

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    iget p4, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p5

    if-eq p4, p5, :cond_8

    .line 586
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_8
    move v0, p2

    :goto_1
    if-eqz v0, :cond_9

    .line 592
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public animIn(Z)V
    .locals 5

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->isStateExpanded:Z

    .line 360
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->animatorOut:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    .line 361
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->animatorIn:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 364
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->onAnimationUpdate(F)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->animatorIn:Lcn/nubia/redmagickyi/util/Counter;

    iget v2, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->animValue:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v1, v3, v0

    invoke-virtual {p1, v3}, Lcn/nubia/redmagickyi/util/Counter;->ofFloat([F)Lcn/nubia/redmagickyi/util/Counter;

    .line 367
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->animatorIn:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/Counter;->start()Lcn/nubia/redmagickyi/util/Counter;

    :goto_0
    return-void
.end method

.method public animOut(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 372
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->isStateExpanded:Z

    .line 373
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->animatorOut:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    .line 374
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->animatorIn:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 377
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->onAnimationUpdate(F)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->animatorOut:Lcn/nubia/redmagickyi/util/Counter;

    iget v2, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->animValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v2, v3, v0

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-virtual {p1, v3}, Lcn/nubia/redmagickyi/util/Counter;->ofFloat([F)Lcn/nubia/redmagickyi/util/Counter;

    .line 380
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->animatorOut:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/Counter;->start()Lcn/nubia/redmagickyi/util/Counter;

    :goto_0
    return-void
.end method

.method public isExpaneded()Z
    .locals 0

    .line 355
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$LayerAnimation;->isStateExpanded:Z

    return p0
.end method
