.class public Landroid/support/constraint/solver/widgets/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static final FLAG_CHAIN_DANGLING:I = 0x1

.field static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field static final FLAG_USE_OPTIMIZE:I = 0x0

.field public static final OPTIMIZATION_BARRIER:I = 0x2

.field public static final OPTIMIZATION_CHAIN:I = 0x4

.field public static final OPTIMIZATION_DIMENSIONS:I = 0x8

.field public static final OPTIMIZATION_DIRECT:I = 0x1

.field public static final OPTIMIZATION_NONE:I = 0x0

.field public static final OPTIMIZATION_RATIO:I = 0x10

.field public static final OPTIMIZATION_STANDARD:I = 0x3

.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroid/support/constraint/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 14
    .param p0, "optimisationLevel"    # I
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    const/4 v8, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v7, 0x1

    .line 151
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateResolutionNodes()V

    .line 153
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 154
    .local v2, "leftNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v5

    .line 155
    .local v5, "topNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v4

    .line 156
    .local v4, "rightNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    .line 158
    .local v0, "bottomNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    and-int/lit8 v9, p0, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2

    move v3, v7

    .line 162
    .local v3, "optimiseDimensions":Z
    :goto_0
    iget v9, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    iget v9, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    .line 164
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v8

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_a

    .line 165
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_4

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_4

    .line 166
    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 167
    invoke-virtual {v4, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 168
    if-eqz v3, :cond_3

    .line 169
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v4, v2, v7, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 255
    :cond_0
    :goto_1
    iget v8, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    iget v8, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    .line 258
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v7

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_1a

    .line 259
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_14

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_14

    .line 260
    invoke-virtual {v5, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 261
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 262
    if-eqz v3, :cond_13

    .line 263
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v0, v5, v7, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 267
    :goto_2
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_1

    .line 268
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 269
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 270
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    neg-int v9, v9

    .line 269
    invoke-virtual {v5, v7, v8, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 360
    :cond_1
    :goto_3
    return-void

    .end local v3    # "optimiseDimensions":Z
    :cond_2
    move v3, v8

    .line 158
    goto :goto_0

    .line 171
    .restart local v3    # "optimiseDimensions":Z
    :cond_3
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    invoke-virtual {v4, v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_1

    .line 173
    :cond_4
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_6

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_6

    .line 174
    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 175
    invoke-virtual {v4, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 176
    if-eqz v3, :cond_5

    .line 177
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v4, v2, v7, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_1

    .line 179
    :cond_5
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    invoke-virtual {v4, v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_1

    .line 181
    :cond_6
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_8

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_8

    .line 182
    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 183
    invoke-virtual {v4, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 184
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v2, v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 185
    if-eqz v3, :cond_7

    .line 186
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v2, v4, v13, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 188
    :cond_7
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v2, v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1

    .line 190
    :cond_8
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_0

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_0

    .line 191
    invoke-virtual {v2, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 192
    invoke-virtual {v4, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 193
    if-eqz v3, :cond_9

    .line 194
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 195
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 196
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v2, v4, v13, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 197
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v4, v2, v7, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 199
    :cond_9
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v2, v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 200
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_1

    .line 203
    :cond_a
    iget-object v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v8

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_0

    .line 204
    invoke-static {p1, v8}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    .line 211
    .local v6, "width":I
    invoke-virtual {v2, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 212
    invoke-virtual {v4, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 213
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_c

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_c

    .line 214
    if-eqz v3, :cond_b

    .line 215
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v4, v2, v7, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 217
    :cond_b
    invoke-virtual {v4, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1

    .line 219
    :cond_c
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_e

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_e

    .line 220
    if-eqz v3, :cond_d

    .line 221
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v4, v2, v7, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 223
    :cond_d
    invoke-virtual {v4, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1

    .line 225
    :cond_e
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_10

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_10

    .line 226
    if-eqz v3, :cond_f

    .line 227
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v2, v4, v13, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1

    .line 229
    :cond_f
    neg-int v8, v6

    invoke-virtual {v2, v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1

    .line 231
    :cond_10
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_0

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_0

    .line 232
    if-eqz v3, :cond_11

    .line 233
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 234
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 236
    :cond_11
    iget v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v8, v8, v12

    if-nez v8, :cond_12

    .line 237
    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 238
    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 239
    invoke-virtual {v2, v4, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 240
    invoke-virtual {v4, v2, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_1

    .line 243
    :cond_12
    invoke-virtual {v2, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 244
    invoke-virtual {v4, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 245
    neg-int v8, v6

    int-to-float v8, v8

    invoke-virtual {v2, v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 246
    int-to-float v8, v6

    invoke-virtual {v4, v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 247
    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_1

    .line 265
    .end local v6    # "width":I
    :cond_13
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    invoke-virtual {v0, v5, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 272
    :cond_14
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_16

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_16

    .line 273
    invoke-virtual {v5, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 274
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 275
    if-eqz v3, :cond_15

    .line 276
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v0, v5, v7, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 280
    :goto_4
    iget v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v8, :cond_1

    .line 281
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v8, v7, v5, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 278
    :cond_15
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    invoke-virtual {v0, v5, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_4

    .line 283
    :cond_16
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_18

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_18

    .line 284
    invoke-virtual {v5, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 285
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 286
    if-eqz v3, :cond_17

    .line 287
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v5, v0, v13, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 291
    :goto_5
    iget v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v8, :cond_1

    .line 292
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v8, v7, v5, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 289
    :cond_17
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v5, v0, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_5

    .line 294
    :cond_18
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_1

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_1

    .line 295
    invoke-virtual {v5, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 296
    invoke-virtual {v0, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 297
    if-eqz v3, :cond_19

    .line 298
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v5, v0, v13, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 299
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v0, v5, v7, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 300
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 301
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 306
    :goto_6
    iget v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v8, :cond_1

    .line 307
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v8, v7, v5, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 303
    :cond_19
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v5, v0, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 304
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v5, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto :goto_6

    .line 310
    :cond_1a
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v7

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_1

    .line 311
    invoke-static {p1, v7}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 312
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    .line 317
    .local v1, "height":I
    invoke-virtual {v5, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 318
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 319
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_1c

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_1c

    .line 320
    if-eqz v3, :cond_1b

    .line 321
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v0, v5, v7, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 323
    :cond_1b
    invoke-virtual {v0, v5, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 325
    :cond_1c
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_1e

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_1e

    .line 326
    if-eqz v3, :cond_1d

    .line 327
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v0, v5, v7, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 329
    :cond_1d
    invoke-virtual {v0, v5, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 331
    :cond_1e
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_20

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_20

    .line 332
    if-eqz v3, :cond_1f

    .line 333
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v5, v0, v13, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 335
    :cond_1f
    neg-int v7, v1

    invoke-virtual {v5, v0, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 337
    :cond_20
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_1

    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_1

    .line 338
    if-eqz v3, :cond_21

    .line 339
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 340
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 342
    :cond_21
    iget v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v8, v8, v12

    if-nez v8, :cond_22

    .line 343
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 344
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 345
    invoke-virtual {v5, v0, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 346
    invoke-virtual {v0, v5, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_3

    .line 348
    :cond_22
    invoke-virtual {v5, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 349
    invoke-virtual {v0, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 350
    neg-int v8, v1

    int-to-float v8, v8

    invoke-virtual {v5, v0, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 351
    int-to-float v8, v1

    invoke-virtual {v0, v5, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 352
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 353
    iget v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v8, :cond_1

    .line 354
    iget-object v8, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget v9, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v8, v7, v5, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3
.end method

.method static applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)Z
    .locals 38
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "first"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    .line 376
    move-object/from16 v32, p4

    .line 377
    .local v32, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/16 v23, 0x0

    .line 378
    .local v23, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v12, 0x0

    .line 379
    .local v12, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/16 v22, 0x0

    .line 381
    .local v22, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v7, 0x0

    .line 383
    .local v7, "done":Z
    const/16 v25, 0x0

    .line 384
    .local v25, "numMatchConstraints":I
    const/16 v31, 0x0

    .line 385
    .local v31, "totalWeights":F
    const/4 v9, 0x0

    .line 386
    .local v9, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/16 v28, 0x0

    .line 388
    .local v28, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v33, v0

    aget-object v33, v33, p2

    sget-object v34, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_2

    const/16 v18, 0x1

    .line 389
    .local v18, "isWrapContent":Z
    :goto_0
    const/16 v16, 0x0

    .line 390
    .local v16, "isChainSpread":Z
    const/16 v17, 0x0

    .line 391
    .local v17, "isChainSpreadInside":Z
    const/4 v15, 0x0

    .line 393
    .local v15, "isChainPacked":Z
    move-object/from16 v14, p4

    .line 394
    .local v14, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez p2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v33

    if-eqz v33, :cond_6

    .line 396
    :goto_1
    if-nez v7, :cond_5

    .line 398
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    add-int/lit8 v34, p3, 0x1

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v24, v0

    .line 399
    .local v24, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v24, :cond_3

    .line 400
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    .line 401
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    if-eqz v33, :cond_0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_1

    .line 403
    :cond_0
    const/16 v23, 0x0

    .line 408
    :cond_1
    :goto_2
    if-eqz v23, :cond_4

    .line 409
    move-object/from16 v32, v23

    goto :goto_1

    .line 388
    .end local v14    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v15    # "isChainPacked":Z
    .end local v16    # "isChainSpread":Z
    .end local v17    # "isChainSpreadInside":Z
    .end local v18    # "isWrapContent":Z
    .end local v24    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 406
    .restart local v14    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v15    # "isChainPacked":Z
    .restart local v16    # "isChainSpread":Z
    .restart local v17    # "isChainSpreadInside":Z
    .restart local v18    # "isWrapContent":Z
    .restart local v24    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_3
    const/16 v23, 0x0

    goto :goto_2

    .line 411
    :cond_4
    const/4 v7, 0x1

    goto :goto_1

    .line 414
    .end local v24    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_5
    move-object/from16 v14, v32

    .line 415
    move-object/from16 v32, p4

    .line 416
    const/16 v23, 0x0

    .line 417
    const/4 v7, 0x0

    .line 420
    :cond_6
    if-nez p2, :cond_e

    .line 421
    iget v0, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v33, v0

    if-nez v33, :cond_b

    const/16 v16, 0x1

    .line 422
    :goto_3
    iget v0, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_c

    const/16 v17, 0x1

    .line 423
    :goto_4
    iget v0, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_d

    const/4 v15, 0x1

    .line 435
    :goto_5
    const/16 v30, 0x0

    .line 436
    .local v30, "totalSize":F
    const/16 v29, 0x0

    .line 437
    .local v29, "totalMargins":F
    const/16 v26, 0x0

    .line 439
    .local v26, "numVisibleWidgets":I
    :goto_6
    if-nez v7, :cond_1f

    .line 443
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v34, v33, p2

    .line 444
    invoke-virtual/range {v32 .. v32}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v33

    const/16 v34, 0x8

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_a

    .line 445
    if-eqz v22, :cond_7

    .line 446
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v33, v0

    aput-object v32, v33, p2

    .line 448
    :cond_7
    if-nez v12, :cond_8

    .line 449
    move-object/from16 v12, v32

    .line 451
    :cond_8
    move-object/from16 v22, v32

    .line 452
    add-int/lit8 v26, v26, 0x1

    .line 453
    if-nez p2, :cond_12

    .line 454
    invoke-virtual/range {v32 .. v32}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v30, v30, v33

    .line 458
    :goto_7
    move-object/from16 v0, v32

    if-eq v0, v12, :cond_9

    .line 459
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v30, v30, v33

    .line 461
    :cond_9
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v29, v29, v33

    .line 462
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    add-int/lit8 v34, p3, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v29, v29, v33

    .line 465
    :cond_a
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v4, v33, p3

    .line 468
    .local v4, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v34, v33, p2

    .line 469
    invoke-virtual/range {v32 .. v32}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v33

    const/16 v34, 0x8

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_19

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v33, v0

    aget-object v33, v33, p2

    sget-object v34, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_19

    .line 471
    add-int/lit8 v25, v25, 0x1

    .line 473
    if-nez p2, :cond_15

    .line 474
    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move/from16 v33, v0

    if-eqz v33, :cond_13

    .line 475
    const/16 v33, 0x0

    .line 682
    .end local v4    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :goto_8
    return v33

    .line 421
    .end local v26    # "numVisibleWidgets":I
    .end local v29    # "totalMargins":F
    .end local v30    # "totalSize":F
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 422
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 423
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 425
    :cond_e
    iget v0, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v33, v0

    if-nez v33, :cond_f

    const/16 v16, 0x1

    .line 426
    :goto_9
    iget v0, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_10

    const/16 v17, 0x1

    .line 427
    :goto_a
    iget v0, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    const/4 v15, 0x1

    :goto_b
    goto/16 :goto_5

    .line 425
    :cond_f
    const/16 v16, 0x0

    goto :goto_9

    .line 426
    :cond_10
    const/16 v17, 0x0

    goto :goto_a

    .line 427
    :cond_11
    const/4 v15, 0x0

    goto :goto_b

    .line 456
    .restart local v26    # "numVisibleWidgets":I
    .restart local v29    # "totalMargins":F
    .restart local v30    # "totalSize":F
    :cond_12
    invoke-virtual/range {v32 .. v32}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v30, v30, v33

    goto/16 :goto_7

    .line 476
    .restart local v4    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_13
    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v33, v0

    if-nez v33, :cond_14

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v33, v0

    if-eqz v33, :cond_18

    .line 477
    :cond_14
    const/16 v33, 0x0

    goto :goto_8

    .line 480
    :cond_15
    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v33, v0

    if-eqz v33, :cond_16

    .line 481
    const/16 v33, 0x0

    goto :goto_8

    .line 482
    :cond_16
    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v33, v0

    if-nez v33, :cond_17

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v33, v0

    if-eqz v33, :cond_18

    .line 483
    :cond_17
    const/16 v33, 0x0

    goto :goto_8

    .line 486
    :cond_18
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    move-object/from16 v33, v0

    aget v33, v33, p2

    add-float v31, v31, v33

    .line 487
    if-nez v9, :cond_1c

    .line 488
    move-object/from16 v9, v32

    .line 492
    :goto_c
    move-object/from16 v28, v32

    .line 496
    :cond_19
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    add-int/lit8 v34, p3, 0x1

    aget-object v33, v33, v34

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v24, v0

    .line 497
    .restart local v24    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v24, :cond_1d

    .line 498
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    .line 499
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1a

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_1b

    .line 500
    :cond_1a
    const/16 v23, 0x0

    .line 505
    :cond_1b
    :goto_d
    if-eqz v23, :cond_1e

    .line 506
    move-object/from16 v32, v23

    goto/16 :goto_6

    .line 490
    .end local v24    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_1c
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v33, v0

    aput-object v32, v33, p2

    goto :goto_c

    .line 503
    .restart local v24    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_1d
    const/16 v23, 0x0

    goto :goto_d

    .line 508
    :cond_1e
    const/4 v7, 0x1

    goto/16 :goto_6

    .line 511
    .end local v4    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v24    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_1f
    move-object/from16 v19, v32

    .line 513
    .local v19, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    .line 514
    .local v10, "firstNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    add-int/lit8 v34, p3, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v20

    .line 516
    .local v20, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v0, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v33, v0

    if-eqz v33, :cond_20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v33, v0

    if-nez v33, :cond_21

    .line 518
    :cond_20
    const/16 v33, 0x0

    goto/16 :goto_8

    .line 522
    :cond_21
    iget-object v0, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_22

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_22

    .line 525
    const/16 v33, 0x0

    goto/16 :goto_8

    .line 528
    :cond_22
    if-lez v25, :cond_23

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_23

    .line 530
    const/16 v33, 0x0

    goto/16 :goto_8

    .line 533
    :cond_23
    const/4 v8, 0x0

    .line 534
    .local v8, "extraMargin":F
    if-nez v15, :cond_24

    if-nez v16, :cond_24

    if-eqz v17, :cond_26

    .line 535
    :cond_24
    if-eqz v12, :cond_25

    .line 536
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v33

    move/from16 v0, v33

    int-to-float v8, v0

    .line 538
    :cond_25
    if-eqz v22, :cond_26

    .line 539
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    add-int/lit8 v34, p3, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v8, v8, v33

    .line 543
    :cond_26
    iget-object v0, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v11, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 544
    .local v11, "firstOffset":F
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move/from16 v21, v0

    .line 545
    .local v21, "lastOffset":F
    const/4 v6, 0x0

    .line 546
    .local v6, "distance":F
    cmpg-float v33, v11, v21

    if-gez v33, :cond_27

    .line 547
    sub-float v33, v21, v11

    sub-float v6, v33, v30

    .line 552
    :goto_e
    if-lez v25, :cond_30

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_30

    .line 553
    invoke-virtual/range {v32 .. v32}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v33

    if-eqz v33, :cond_28

    invoke-virtual/range {v32 .. v32}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v33, v0

    aget-object v33, v33, p2

    sget-object v34, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_28

    .line 554
    const/16 v33, 0x0

    goto/16 :goto_8

    .line 549
    :cond_27
    sub-float v33, v11, v21

    sub-float v6, v33, v30

    goto :goto_e

    .line 556
    :cond_28
    add-float v6, v6, v30

    .line 557
    sub-float v6, v6, v29

    .line 558
    move-object/from16 v32, v12

    .line 559
    move/from16 v27, v11

    .line 560
    .local v27, "position":F
    if-eqz v16, :cond_29

    .line 561
    sub-float v33, v29, v8

    sub-float v6, v6, v33

    .line 563
    :cond_29
    if-eqz v16, :cond_2a

    .line 564
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    add-int/lit8 v34, p3, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v27, v27, v33

    .line 565
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v33, v0

    aget-object v23, v33, p2

    .line 566
    if-eqz v23, :cond_2a

    .line 567
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v27, v27, v33

    .line 570
    :cond_2a
    :goto_f
    if-eqz v32, :cond_2f

    .line 571
    sget-object v33, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v33, :cond_2b

    .line 572
    sget-object v33, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x1

    sub-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 573
    sget-object v33, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x1

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 574
    sget-object v33, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x1

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 576
    :cond_2b
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v33, v0

    aget-object v23, v33, p2

    .line 577
    if-nez v23, :cond_2c

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2e

    .line 578
    :cond_2c
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v5, v6, v33

    .line 579
    .local v5, "dimension":F
    const/16 v33, 0x0

    cmpl-float v33, v31, v33

    if-lez v33, :cond_2d

    .line 580
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    move-object/from16 v33, v0

    aget v33, v33, p2

    mul-float v33, v33, v6

    div-float v5, v33, v31

    .line 582
    :cond_2d
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v27, v27, v33

    .line 583
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v33

    iget-object v0, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 585
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    add-int/lit8 v34, p3, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v33

    iget-object v0, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    add-float v35, v27, v5

    invoke-virtual/range {v33 .. v35}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 587
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 588
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    add-int/lit8 v34, p3, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 589
    add-float v27, v27, v5

    .line 590
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    add-int/lit8 v34, p3, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v27, v27, v33

    .line 592
    .end local v5    # "dimension":F
    :cond_2e
    move-object/from16 v32, v23

    goto/16 :goto_f

    .line 594
    :cond_2f
    const/16 v33, 0x1

    goto/16 :goto_8

    .line 597
    .end local v27    # "position":F
    :cond_30
    cmpg-float v33, v6, v30

    if-gez v33, :cond_31

    .line 598
    const/16 v33, 0x0

    goto/16 :goto_8

    .line 601
    :cond_31
    if-eqz v15, :cond_36

    .line 602
    sub-float/2addr v6, v8

    .line 604
    move-object/from16 v32, v12

    .line 605
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v33

    mul-float v33, v33, v6

    add-float v6, v11, v33

    .line 606
    :goto_10
    if-eqz v32, :cond_42

    .line 607
    sget-object v33, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v33, :cond_32

    .line 608
    sget-object v33, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x1

    sub-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 609
    sget-object v33, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x1

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 610
    sget-object v33, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x1

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 612
    :cond_32
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v33, v0

    aget-object v23, v33, p2

    .line 613
    if-nez v23, :cond_33

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_34

    .line 614
    :cond_33
    const/4 v5, 0x0

    .line 615
    .restart local v5    # "dimension":F
    if-nez p2, :cond_35

    .line 616
    invoke-virtual/range {v32 .. v32}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v5, v0

    .line 620
    :goto_11
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v6, v6, v33

    .line 621
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v33

    iget-object v0, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 623
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    add-int/lit8 v34, p3, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v33

    iget-object v0, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    add-float v35, v6, v5

    invoke-virtual/range {v33 .. v35}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 625
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 626
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    add-int/lit8 v34, p3, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 627
    add-float/2addr v6, v5

    .line 628
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    add-int/lit8 v34, p3, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v6, v6, v33

    .line 630
    .end local v5    # "dimension":F
    :cond_34
    move-object/from16 v32, v23

    goto/16 :goto_10

    .line 618
    .restart local v5    # "dimension":F
    :cond_35
    invoke-virtual/range {v32 .. v32}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v5, v0

    goto/16 :goto_11

    .line 632
    .end local v5    # "dimension":F
    :cond_36
    if-nez v16, :cond_37

    if-eqz v17, :cond_42

    .line 633
    :cond_37
    if-eqz v16, :cond_3f

    .line 634
    sub-float/2addr v6, v8

    .line 638
    :cond_38
    :goto_12
    move-object/from16 v32, v12

    .line 639
    add-int/lit8 v33, v26, 0x1

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v13, v6, v33

    .line 640
    .local v13, "gap":F
    if-eqz v17, :cond_39

    .line 641
    const/16 v33, 0x1

    move/from16 v0, v26

    move/from16 v1, v33

    if-le v0, v1, :cond_40

    .line 642
    add-int/lit8 v33, v26, -0x1

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v13, v6, v33

    .line 647
    :cond_39
    :goto_13
    add-float v6, v11, v13

    .line 648
    if-eqz v17, :cond_3a

    const/16 v33, 0x1

    move/from16 v0, v26

    move/from16 v1, v33

    if-le v0, v1, :cond_3a

    .line 649
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v6, v11, v33

    .line 651
    :cond_3a
    if-eqz v16, :cond_3b

    .line 652
    if-eqz v12, :cond_3b

    .line 653
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v6, v6, v33

    .line 656
    :cond_3b
    :goto_14
    if-eqz v32, :cond_42

    .line 657
    sget-object v33, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v33, :cond_3c

    .line 658
    sget-object v33, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x1

    sub-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 659
    sget-object v33, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x1

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 660
    sget-object v33, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x1

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 662
    :cond_3c
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v33, v0

    aget-object v23, v33, p2

    .line 663
    if-nez v23, :cond_3d

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3e

    .line 664
    :cond_3d
    const/4 v5, 0x0

    .line 665
    .restart local v5    # "dimension":F
    if-nez p2, :cond_41

    .line 666
    invoke-virtual/range {v32 .. v32}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v5, v0

    .line 670
    :goto_15
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v33

    iget-object v0, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 672
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    add-int/lit8 v34, p3, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v33

    iget-object v0, v10, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-object/from16 v34, v0

    add-float v35, v6, v5

    invoke-virtual/range {v33 .. v35}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 674
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    aget-object v33, v33, p3

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 675
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    add-int/lit8 v34, p3, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 676
    add-float v33, v5, v13

    add-float v6, v6, v33

    .line 678
    .end local v5    # "dimension":F
    :cond_3e
    move-object/from16 v32, v23

    goto/16 :goto_14

    .line 635
    .end local v13    # "gap":F
    :cond_3f
    if-eqz v17, :cond_38

    .line 636
    sub-float/2addr v6, v8

    goto/16 :goto_12

    .line 644
    .restart local v13    # "gap":F
    :cond_40
    const/high16 v33, 0x40000000    # 2.0f

    div-float v13, v6, v33

    goto/16 :goto_13

    .line 668
    .restart local v5    # "dimension":F
    :cond_41
    invoke-virtual/range {v32 .. v32}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v5, v0

    goto :goto_15

    .line 682
    .end local v5    # "dimension":F
    .end local v13    # "gap":F
    :cond_42
    const/16 v33, 0x1

    goto/16 :goto_8
.end method

.method static checkMatchParent(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 9
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v6

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_0

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v6

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_0

    .line 59
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 60
    .local v1, "left":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int v2, v4, v5

    .line 67
    .local v2, "right":I
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 68
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 69
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v4, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 70
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v4, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 71
    iput v8, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 73
    invoke-virtual {p2, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 75
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_0
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v7

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_3

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v7

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_3

    .line 78
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 79
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int v0, v4, v5

    .line 86
    .local v0, "bottom":I
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 87
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 88
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v4, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 89
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v4, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 90
    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v4, :cond_1

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 91
    :cond_1
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 92
    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v5, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 94
    :cond_2
    iput v8, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 96
    invoke-virtual {p2, v3, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 98
    .end local v0    # "bottom":I
    .end local v3    # "top":I
    :cond_3
    return-void
.end method

.method private static optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z
    .locals 4
    .param p0, "constraintWidget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p1

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 114
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_2

    :goto_1
    aget-object v0, v2, v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 121
    :cond_3
    if-nez p1, :cond_5

    .line 122
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v2, :cond_0

    .line 125
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-nez v2, :cond_0

    :cond_4
    move v1, v0

    .line 136
    goto :goto_0

    .line 129
    :cond_5
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v2, :cond_0

    .line 132
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v2, :cond_4

    goto :goto_0
.end method
