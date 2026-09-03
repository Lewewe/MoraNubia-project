.class Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;
.super Ljava/lang/Object;
.source "AiAgentEntranceCardLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;
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

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation$1;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)V

    .line 327
    new-instance p1, Lcn/nubia/redmagickyi/util/Counter;

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/util/Counter;-><init>(Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v1, v2}, Lcn/nubia/redmagickyi/util/Counter;->setDuration(J)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animatorIn:Lcn/nubia/redmagickyi/util/Counter;

    .line 328
    new-instance p1, Lcn/nubia/redmagickyi/util/Counter;

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/util/Counter;-><init>(Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;)V

    invoke-virtual {p1, v1, v2}, Lcn/nubia/redmagickyi/util/Counter;->setDuration(J)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animatorOut:Lcn/nubia/redmagickyi/util/Counter;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;F)V
    .locals 0

    .line 314
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->onAnimationUpdate(F)V

    return-void
.end method

.method private onAnimationUpdate(F)V
    .locals 21

    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 362
    iput v7, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animValue:F

    .line 363
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Root;->access$100()F

    move-result v8

    .line 364
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Root;->access$200()F

    move-result v9

    .line 367
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->access$300()F

    move-result v0

    .line 368
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->access$400()F

    move-result v1

    .line 369
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->access$500()F

    move-result v2

    .line 370
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->access$600()F

    move-result v3

    .line 371
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->access$700()F

    move-result v4

    .line 372
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->access$800()F

    move-result v5

    .line 373
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Icon;->access$900()F

    move-result v10

    .line 374
    iget-object v11, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v11}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$1000(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Z

    move-result v11

    if-nez v11, :cond_0

    add-float/2addr v4, v8

    add-float/2addr v5, v8

    add-float/2addr v10, v9

    .line 379
    :cond_0
    iget-object v11, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    .line 380
    invoke-static {v11}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$1100(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/widget/ImageView;

    move-result-object v11

    sub-float/2addr v1, v0

    mul-float/2addr v1, v7

    add-float/2addr v0, v1

    .line 381
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sub-float/2addr v3, v2

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    .line 382
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-float/2addr v5, v4

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    .line 383
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 384
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    .line 379
    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 389
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Text;->access$1200()F

    move-result v0

    .line 390
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Text;->access$1300()F

    move-result v1

    .line 391
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Text;->access$1400()F

    move-result v2

    .line 392
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Text;->access$1500()F

    move-result v3

    .line 393
    iget-object v4, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$1000(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Z

    move-result v4

    if-nez v4, :cond_1

    add-float/2addr v0, v8

    add-float/2addr v1, v8

    add-float/2addr v2, v9

    add-float/2addr v3, v9

    .line 399
    :cond_1
    iget-object v4, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    .line 400
    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$1600(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/widget/TextView;

    move-result-object v4

    sub-float/2addr v1, v0

    mul-float/2addr v1, v7

    add-float/2addr v0, v1

    .line 403
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sub-float/2addr v3, v2

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    .line 404
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v4, v5

    move-object v5, v10

    .line 399
    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 407
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Text;->access$1700()F

    move-result v0

    .line 408
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Text;->access$1800()F

    move-result v1

    .line 409
    iget-object v2, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$1600(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/widget/TextView;

    move-result-object v2

    sub-float/2addr v1, v0

    mul-float/2addr v1, v7

    add-float/2addr v0, v1

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 413
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$1900(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v7

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v1, v11, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 414
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$1900(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v12, 0x0

    cmpg-float v0, v0, v12

    const/16 v13, 0x8

    if-gtz v0, :cond_2

    .line 415
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$1900(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 417
    :cond_2
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$1900(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 419
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Footer;->access$2000()F

    move-result v14

    .line 420
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Footer;->access$2100()F

    move-result v15

    .line 421
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Footer;->access$2200()F

    move-result v0

    .line 422
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Footer;->access$2300()F

    move-result v1

    .line 423
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Footer;->access$2400()F

    move-result v2

    .line 424
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Footer;->access$2500()F

    move-result v3

    .line 425
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Footer;->access$2600()F

    move-result v4

    .line 426
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Footer;->access$2700()F

    move-result v5

    .line 427
    iget-object v11, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v11}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$1000(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Z

    move-result v11

    if-nez v11, :cond_3

    add-float/2addr v2, v8

    add-float/2addr v3, v8

    add-float/2addr v4, v9

    add-float/2addr v5, v9

    :cond_3
    move v11, v2

    move/from16 v16, v3

    .line 433
    iget-object v2, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    .line 434
    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$1900(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v2

    sub-float v3, v15, v14

    mul-float/2addr v3, v7

    add-float/2addr v3, v14

    .line 435
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-float/2addr v1, v0

    mul-float/2addr v1, v7

    add-float v17, v0, v1

    .line 436
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    sub-float v0, v16, v11

    mul-float/2addr v0, v7

    add-float/2addr v0, v11

    .line 437
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    sub-float/2addr v5, v4

    mul-float/2addr v5, v7

    add-float v20, v4, v5

    .line 438
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    .line 433
    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    cmpg-float v0, v7, v12

    if-gtz v0, :cond_4

    .line 443
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$2800(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 445
    :cond_4
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$2800(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 447
    :goto_1
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$2900(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_expand_footer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 448
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Footer;->access$3000()F

    move-result v0

    sub-float/2addr v14, v0

    .line 449
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Footer;->access$3000()F

    move-result v0

    add-float/2addr v11, v0

    sub-float v0, v15, v14

    mul-float/2addr v0, v7

    add-float/2addr v0, v14

    .line 452
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 453
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-float v16, v16, v11

    mul-float v16, v16, v7

    add-float v11, v11, v16

    .line 454
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 455
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    .line 450
    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    div-float/2addr v15, v14

    .line 460
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Footer;->access$3100()F

    move-result v0

    div-float v1, v0, v15

    .line 462
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Footer;->access$3200()F

    move-result v2

    div-float v3, v2, v15

    .line 464
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Footer;->access$3300()F

    move-result v4

    .line 465
    iget-object v5, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$1000(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Z

    move-result v5

    if-nez v5, :cond_5

    add-float/2addr v4, v9

    .line 468
    :cond_5
    iget-object v5, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    .line 469
    invoke-static {v5}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3400(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/widget/ImageView;

    move-result-object v5

    sub-float/2addr v0, v1

    mul-float/2addr v0, v7

    add-float/2addr v1, v0

    .line 470
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sub-float/2addr v2, v3

    mul-float/2addr v2, v7

    add-float/2addr v3, v2

    .line 471
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 473
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v11

    move-object v5, v14

    .line 468
    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 478
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3500(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 479
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3500(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3500(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 480
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3500(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    iget-object v1, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3500(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 481
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3500(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v7

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 482
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3500(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 483
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3500(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v12

    if-gtz v0, :cond_6

    .line 484
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3500(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 486
    :cond_6
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3500(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 488
    :goto_2
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Header;->access$3600()F

    move-result v0

    .line 489
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimationConstant$Header;->access$3700()F

    move-result v1

    .line 490
    iget-object v2, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$1000(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Z

    move-result v2

    if-nez v2, :cond_7

    add-float/2addr v0, v8

    add-float/2addr v1, v9

    .line 494
    :cond_7
    iget-object v2, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    .line 495
    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3500(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v2

    .line 498
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 499
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v8

    .line 494
    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 504
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3800(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 505
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$1000(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 506
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3800(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v11, v1, v7

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    .line 507
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3800(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v12

    if-gtz v0, :cond_8

    .line 508
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3800(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 510
    :cond_8
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3800(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 513
    :cond_9
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3800(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 514
    iget-object v0, v6, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;->access$3800(Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method private updateLayoutParams(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 523
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 524
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 527
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 528
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move p2, v0

    :cond_1
    if-eqz p4, :cond_2

    .line 531
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p3, v1, :cond_2

    .line 532
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    move p2, v0

    :cond_2
    if-eqz p5, :cond_3

    .line 535
    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eq p3, p4, :cond_3

    .line 536
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    move v0, p2

    :goto_1
    if-eqz v0, :cond_4

    .line 540
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public animIn(Z)V
    .locals 5

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->isStateExpanded:Z

    .line 337
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animatorOut:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    .line 338
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animatorIn:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 341
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->onAnimationUpdate(F)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animatorIn:Lcn/nubia/redmagickyi/util/Counter;

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animValue:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v1, v3, v0

    invoke-virtual {p1, v3}, Lcn/nubia/redmagickyi/util/Counter;->ofFloat([F)Lcn/nubia/redmagickyi/util/Counter;

    .line 344
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animatorIn:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/Counter;->start()Lcn/nubia/redmagickyi/util/Counter;

    :goto_0
    return-void
.end method

.method public animOut(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->isStateExpanded:Z

    .line 350
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animatorOut:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    .line 351
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animatorIn:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 354
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->onAnimationUpdate(F)V

    goto :goto_0

    .line 356
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animatorOut:Lcn/nubia/redmagickyi/util/Counter;

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v2, v3, v0

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-virtual {p1, v3}, Lcn/nubia/redmagickyi/util/Counter;->ofFloat([F)Lcn/nubia/redmagickyi/util/Counter;

    .line 357
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->animatorOut:Lcn/nubia/redmagickyi/util/Counter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/Counter;->start()Lcn/nubia/redmagickyi/util/Counter;

    :goto_0
    return-void
.end method

.method public isExpaneded()Z
    .locals 0

    .line 332
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/AiAgentEntranceCardLayer$LayerAnimation;->isStateExpanded:Z

    return p0
.end method
