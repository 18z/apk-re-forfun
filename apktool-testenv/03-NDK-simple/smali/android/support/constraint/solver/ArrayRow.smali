.class public Landroid/support/constraint/solver/ArrayRow;
.super Ljava/lang/Object;
.source "ArrayRow.java"

# interfaces
.implements Landroid/support/constraint/solver/LinearSystem$Row;


# static fields
.field private static final DEBUG:Z


# instance fields
.field constantValue:F

.field isSimpleDefinition:Z

.field used:Z

.field variable:Landroid/support/constraint/solver/SolverVariable;

.field public final variables:Landroid/support/constraint/solver/ArrayLinkedVariables;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/Cache;)V
    .locals 2
    .param p1, "cache"    # Landroid/support/constraint/solver/Cache;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 26
    iput-boolean v1, p0, Landroid/support/constraint/solver/ArrayRow;->used:Z

    .line 30
    iput-boolean v1, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 33
    new-instance v0, Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-direct {v0, p0, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;-><init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    .line 34
    return-void
.end method


# virtual methods
.method public addError(Landroid/support/constraint/solver/LinearSystem;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 3
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "strength"    # I

    .prologue
    .line 315
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const-string v1, "ep"

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 316
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const-string v1, "em"

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 317
    return-object p0
.end method

.method public addError(Landroid/support/constraint/solver/SolverVariable;)V
    .locals 3
    .param p1, "error"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 471
    const/high16 v0, 0x3f800000    # 1.0f

    .line 472
    .local v0, "weight":F
    iget v1, p1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 473
    const/high16 v0, 0x3f800000    # 1.0f

    .line 483
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v1, p1, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 484
    return-void

    .line 474
    :cond_1
    iget v1, p1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 475
    const/high16 v0, 0x447a0000    # 1000.0f

    goto :goto_0

    .line 476
    :cond_2
    iget v1, p1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 477
    const v0, 0x49742400    # 1000000.0f

    goto :goto_0

    .line 478
    :cond_3
    iget v1, p1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 479
    const v0, 0x4e6e6b28    # 1.0E9f

    goto :goto_0

    .line 480
    :cond_4
    iget v1, p1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 481
    const v0, 0x5368d4a5    # 1.0E12f

    goto :goto_0
.end method

.method addSingleError(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 2
    .param p1, "error"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "sign"    # I

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 153
    return-object p0
.end method

.method chooseSubject(Landroid/support/constraint/solver/LinearSystem;)Z
    .locals 3
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "addedExtra":Z
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->chooseSubject(Landroid/support/constraint/solver/LinearSystem;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 400
    .local v1, "pivotCandidate":Landroid/support/constraint/solver/SolverVariable;
    if-nez v1, :cond_1

    .line 402
    const/4 v0, 0x1

    .line 406
    :goto_0
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v2, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v2, :cond_0

    .line 407
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 409
    :cond_0
    return v0

    .line 404
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayRow;->pivot(Landroid/support/constraint/solver/SolverVariable;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->clear()V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 449
    return-void
.end method

.method createRowCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 4
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "marginA"    # I
    .param p4, "bias"    # F
    .param p5, "variableC"    # Landroid/support/constraint/solver/SolverVariable;
    .param p6, "variableD"    # Landroid/support/constraint/solver/SolverVariable;
    .param p7, "marginB"    # I

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 269
    if-ne p2, p5, :cond_1

    .line 273
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 274
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p6, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 275
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 311
    :cond_0
    :goto_0
    return-object p0

    .line 278
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p4, v0

    if-nez v0, :cond_3

    .line 285
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 286
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p2, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 287
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p5, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 288
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p6, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 289
    if-gtz p3, :cond_2

    if-lez p7, :cond_0

    .line 290
    :cond_2
    neg-int v0, p3

    add-int/2addr v0, p7

    int-to-float v0, v0

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 292
    :cond_3
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_4

    .line 294
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 295
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p2, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 296
    int-to-float v0, p3

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 297
    :cond_4
    cmpl-float v0, p4, v2

    if-ltz v0, :cond_5

    .line 299
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p5, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 300
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p6, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 301
    int-to-float v0, p7

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 303
    :cond_5
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    sub-float v1, v2, p4

    mul-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 304
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    sub-float v1, v2, p4

    mul-float/2addr v1, v3

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 305
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    mul-float v1, v3, p4

    invoke-virtual {v0, p5, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 306
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    mul-float v1, v2, p4

    invoke-virtual {v0, p6, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 307
    if-gtz p3, :cond_6

    if-lez p7, :cond_0

    .line 308
    :cond_6
    neg-int v0, p3

    int-to-float v0, v0

    sub-float v1, v2, p4

    mul-float/2addr v0, v1

    int-to-float v1, p7

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_0
.end method

.method createRowDefinition(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 1
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # I

    .prologue
    .line 113
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 114
    int-to-float v0, p2

    iput v0, p1, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    .line 115
    int-to-float v0, p2

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 117
    return-object p0
.end method

.method createRowDimensionPercent(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;
    .locals 2
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "variableC"    # Landroid/support/constraint/solver/SolverVariable;
    .param p4, "percent"    # F

    .prologue
    .line 322
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 323
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p4

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 324
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p3, p4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 325
    return-object p0
.end method

.method public createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;
    .locals 2
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "variableC"    # Landroid/support/constraint/solver/SolverVariable;
    .param p4, "variableD"    # Landroid/support/constraint/solver/SolverVariable;
    .param p5, "ratio"    # F

    .prologue
    .line 342
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 343
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 344
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p3, p5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 345
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    neg-float v1, p5

    invoke-virtual {v0, p4, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 346
    return-object p0
.end method

.method public createRowEqualDimension(FFFLandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 6
    .param p1, "currentWeight"    # F
    .param p2, "totalWeights"    # F
    .param p3, "nextWeight"    # F
    .param p4, "variableStartA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p5, "marginStartA"    # I
    .param p6, "variableEndA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p7, "marginEndA"    # I
    .param p8, "variableStartB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p9, "marginStartB"    # I
    .param p10, "variableEndB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p11, "marginEndB"    # I

    .prologue
    .line 242
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_0

    cmpl-float v4, p1, p3

    if-nez v4, :cond_1

    .line 246
    :cond_0
    neg-int v4, p5

    sub-int/2addr v4, p7

    add-int/2addr v4, p9

    add-int v4, v4, p11

    int-to-float v4, v4

    iput v4, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 247
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, p4, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 248
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, p6, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 249
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p10

    invoke-virtual {v4, v0, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 250
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, p8, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 264
    :goto_0
    return-object p0

    .line 252
    :cond_1
    div-float v1, p1, p2

    .line 253
    .local v1, "cw":F
    div-float v2, p3, p2

    .line 254
    .local v2, "nw":F
    div-float v3, v1, v2

    .line 258
    .local v3, "w":F
    neg-int v4, p5

    sub-int/2addr v4, p7

    int-to-float v4, v4

    int-to-float v5, p9

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    move/from16 v0, p11

    int-to-float v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 259
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, p4, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 260
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, p6, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 261
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v0, p10

    invoke-virtual {v4, v0, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 262
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    neg-float v5, v3

    invoke-virtual {v4, p8, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowEqualMatchDimensions(FFFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;
    .locals 7
    .param p1, "currentWeight"    # F
    .param p2, "totalWeights"    # F
    .param p3, "nextWeight"    # F
    .param p4, "variableStartA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p5, "variableEndA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p6, "variableStartB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p7, "variableEndB"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    .line 214
    cmpl-float v3, p2, v5

    if-eqz v3, :cond_0

    cmpl-float v3, p1, p3

    if-nez v3, :cond_1

    .line 217
    :cond_0
    iput v5, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 218
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v3, p4, v6}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 219
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v3, p5, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 220
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v3, p7, v6}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 221
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v3, p6, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 234
    :goto_0
    return-object p0

    .line 223
    :cond_1
    div-float v0, p1, p2

    .line 224
    .local v0, "cw":F
    div-float v1, p3, p2

    .line 225
    .local v1, "nw":F
    div-float v2, v0, v1

    .line 228
    .local v2, "w":F
    iput v5, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 229
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v3, p4, v6}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 230
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v3, p5, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 231
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v3, p7, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 232
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    neg-float v4, v2

    invoke-virtual {v3, p6, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 2
    .param p1, "variable"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "value"    # I

    .prologue
    .line 121
    if-gez p2, :cond_0

    .line 122
    mul-int/lit8 v0, p2, -0x1

    int-to-float v0, v0

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 123
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 128
    :goto_0
    return-object p0

    .line 125
    :cond_0
    int-to-float v0, p2

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 126
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 5
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "margin"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "inverse":Z
    if-eqz p3, :cond_1

    .line 134
    move v1, p3

    .line 135
    .local v1, "m":I
    if-gez v1, :cond_0

    .line 136
    mul-int/lit8 v1, v1, -0x1

    .line 137
    const/4 v0, 0x1

    .line 139
    :cond_0
    int-to-float v2, v1

    iput v2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 141
    .end local v1    # "m":I
    :cond_1
    if-nez v0, :cond_2

    .line 142
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p1, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 143
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p2, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 148
    :goto_0
    return-object p0

    .line 145
    :cond_2
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p1, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 146
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p2, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;
    .locals 2
    .param p1, "a"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "b"    # I
    .param p3, "slack"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 181
    int-to-float v0, p2

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 182
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 183
    return-object p0
.end method

.method public createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 5
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "slack"    # Landroid/support/constraint/solver/SolverVariable;
    .param p4, "margin"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "inverse":Z
    if-eqz p4, :cond_1

    .line 161
    move v1, p4

    .line 162
    .local v1, "m":I
    if-gez v1, :cond_0

    .line 163
    mul-int/lit8 v1, v1, -0x1

    .line 164
    const/4 v0, 0x1

    .line 166
    :cond_0
    int-to-float v2, v1

    iput v2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 168
    .end local v1    # "m":I
    :cond_1
    if-nez v0, :cond_2

    .line 169
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p1, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 170
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p2, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 171
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p3, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 177
    :goto_0
    return-object p0

    .line 173
    :cond_2
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p1, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 174
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p2, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 175
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p3, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 5
    .param p1, "variableA"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "variableB"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "slack"    # Landroid/support/constraint/solver/SolverVariable;
    .param p4, "margin"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "inverse":Z
    if-eqz p4, :cond_1

    .line 190
    move v1, p4

    .line 191
    .local v1, "m":I
    if-gez v1, :cond_0

    .line 192
    mul-int/lit8 v1, v1, -0x1

    .line 193
    const/4 v0, 0x1

    .line 195
    :cond_0
    int-to-float v2, v1

    iput v2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 197
    .end local v1    # "m":I
    :cond_1
    if-nez v0, :cond_2

    .line 198
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p1, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 199
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p2, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 200
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p3, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 206
    :goto_0
    return-object p0

    .line 202
    :cond_2
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p1, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 203
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p2, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 204
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2, p3, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowWithAngle(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;
    .locals 3
    .param p1, "at"    # Landroid/support/constraint/solver/SolverVariable;
    .param p2, "ab"    # Landroid/support/constraint/solver/SolverVariable;
    .param p3, "bt"    # Landroid/support/constraint/solver/SolverVariable;
    .param p4, "bb"    # Landroid/support/constraint/solver/SolverVariable;
    .param p5, "angleComponent"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x41000000    # -0.5f

    .line 360
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p3, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 361
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p4, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 362
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 363
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 364
    neg-float v0, p5

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 365
    return-object p0
.end method

.method ensurePositiveConstant()V
    .locals 2

    .prologue
    .line 382
    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 384
    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 385
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->invert()V

    .line 387
    :cond_0
    return-void
.end method

.method public getKey()Landroid/support/constraint/solver/SolverVariable;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    return-object v0
.end method

.method public getPivotCandidate(Landroid/support/constraint/solver/LinearSystem;[Z)Landroid/support/constraint/solver/SolverVariable;
    .locals 2
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "avoid"    # [Z

    .prologue
    .line 441
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getPivotCandidate([ZLandroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    return-object v0
.end method

.method hasKeyVariable()Z
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasVariable(Landroid/support/constraint/solver/SolverVariable;)Z
    .locals 1
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->containsKey(Landroid/support/constraint/solver/SolverVariable;)Z

    move-result v0

    return v0
.end method

.method public initFromRow(Landroid/support/constraint/solver/LinearSystem$Row;)V
    .locals 6
    .param p1, "row"    # Landroid/support/constraint/solver/LinearSystem$Row;

    .prologue
    .line 457
    instance-of v4, p1, Landroid/support/constraint/solver/ArrayRow;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 458
    check-cast v0, Landroid/support/constraint/solver/ArrayRow;

    .line 459
    .local v0, "copiedRow":Landroid/support/constraint/solver/ArrayRow;
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 460
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->clear()V

    .line 461
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v4, :cond_0

    .line 462
    iget-object v4, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v4, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 463
    .local v3, "var":Landroid/support/constraint/solver/SolverVariable;
    iget-object v4, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v4, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v2

    .line 464
    .local v2, "val":F
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v2, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;FZ)V

    .line 461
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "copiedRow":Landroid/support/constraint/solver/ArrayRow;
    .end local v1    # "i":I
    .end local v2    # "val":F
    .end local v3    # "var":Landroid/support/constraint/solver/SolverVariable;
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v0, v0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pickPivot(Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/SolverVariable;
    .locals 2
    .param p1, "exclude"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    .line 413
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getPivotCandidate([ZLandroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    return-object v0
.end method

.method pivot(Landroid/support/constraint/solver/SolverVariable;)V
    .locals 4
    .param p1, "v"    # Landroid/support/constraint/solver/SolverVariable;

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 417
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 420
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 423
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;Z)F

    move-result v1

    mul-float v0, v1, v3

    .line 424
    .local v0, "amount":F
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 425
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_1
    iget v1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    div-float/2addr v1, v0

    iput v1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 429
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->divideByAmount(F)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 103
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->clear()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 106
    return-void
.end method

.method sizeInBytes()I
    .locals 2

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "size":I
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v1, :cond_0

    .line 371
    add-int/lit8 v0, v0, 0x4

    .line 373
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 374
    add-int/lit8 v0, v0, 0x4

    .line 376
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->sizeInBytes()I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    return v0
.end method

.method toReadableString()Ljava/lang/String;
    .locals 11

    .prologue
    const/high16 v10, -0x40800000    # -1.0f

    const/4 v9, 0x0

    .line 49
    const-string v5, ""

    .line 50
    .local v5, "s":Ljava/lang/String;
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-nez v7, :cond_2

    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "addedVariable":Z
    iget v7, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_0

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    const/4 v0, 0x1

    .line 61
    :cond_0
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v2, v7, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 62
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_8

    .line 63
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 64
    .local v6, "v":Landroid/support/constraint/solver/SolverVariable;
    if-nez v6, :cond_3

    .line 62
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    .end local v0    # "addedVariable":Z
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v6    # "v":Landroid/support/constraint/solver/SolverVariable;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 67
    .restart local v0    # "addedVariable":Z
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "v":Landroid/support/constraint/solver/SolverVariable;
    :cond_3
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v1

    .line 68
    .local v1, "amount":F
    cmpl-float v7, v1, v9

    if-eqz v7, :cond_1

    .line 71
    invoke-virtual {v6}, Landroid/support/constraint/solver/SolverVariable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "name":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 73
    cmpg-float v7, v1, v9

    if-gez v7, :cond_4

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 75
    mul-float/2addr v1, v10

    .line 85
    :cond_4
    :goto_3
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v1, v7

    if-nez v7, :cond_7

    .line 86
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    :goto_4
    const/4 v0, 0x1

    goto :goto_2

    .line 78
    :cond_5
    cmpl-float v7, v1, v9

    if-lez v7, :cond_6

    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 81
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    mul-float/2addr v1, v10

    goto :goto_3

    .line 88
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 92
    .end local v1    # "amount":F
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "v":Landroid/support/constraint/solver/SolverVariable;
    :cond_8
    if-nez v0, :cond_9

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0.0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    :cond_9
    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
