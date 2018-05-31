.class public Landroid/support/constraint/solver/widgets/ResolutionAnchor;
.super Landroid/support/constraint/solver/widgets/ResolutionNode;
.source "ResolutionAnchor.java"


# static fields
.field public static final BARRIER_CONNECTION:I = 0x5

.field public static final CENTER_CONNECTION:I = 0x2

.field public static final CHAIN_CONNECTION:I = 0x4

.field public static final DIRECT_CONNECTION:I = 0x1

.field public static final MATCH_CONNECTION:I = 0x3

.field public static final UNCONNECTED:I


# instance fields
.field computedValue:F

.field private dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

.field private dimensionMultiplier:I

.field myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field offset:F

.field private opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

.field private oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

.field private oppositeDimensionMultiplier:I

.field private oppositeOffset:F

.field resolvedOffset:F

.field resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

.field target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

.field type:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V
    .locals 3
    .param p1, "anchor"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ResolutionNode;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    .line 45
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .line 46
    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 47
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .line 48
    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    .line 51
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 52
    return-void
.end method


# virtual methods
.method addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 4
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;

    .prologue
    .line 301
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 303
    .local v0, "sv":Landroid/support/constraint/solver/SolverVariable;
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-nez v2, :cond_0

    .line 304
    iget v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    float-to-int v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 307
    .local v1, "v":Landroid/support/constraint/solver/SolverVariable;
    iget v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    float-to-int v2, v2

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_0
.end method

.method public dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "node"    # Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .param p3, "offset"    # I

    .prologue
    .line 259
    iput p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    .line 260
    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 261
    int-to-float v0, p3

    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    .line 262
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 266
    return-void
.end method

.method public dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V
    .locals 1
    .param p1, "node"    # Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .param p2, "offset"    # I

    .prologue
    .line 269
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 270
    int-to-float v0, p2

    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    .line 271
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 275
    return-void
.end method

.method public dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V
    .locals 1
    .param p1, "node"    # Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .param p2, "multiplier"    # I
    .param p3, "dimension"    # Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .prologue
    .line 278
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 279
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 280
    iput-object p3, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .line 281
    iput p2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 282
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 287
    return-void
.end method

.method public getResolvedValue()F
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    return v0
.end method

.method public remove(Landroid/support/constraint/solver/widgets/ResolutionDimension;)V
    .locals 3
    .param p1, "resolutionDimension"    # Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-ne v0, p1, :cond_1

    .line 56
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .line 57
    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve()V

    .line 63
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-ne v0, v1, :cond_0

    .line 59
    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .line 60
    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 226
    invoke-super {p0}, Landroid/support/constraint/solver/widgets/ResolutionNode;->reset()V

    .line 227
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 228
    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    .line 229
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .line 230
    iput v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 231
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .line 232
    iput v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    .line 233
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 234
    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 235
    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->computedValue:F

    .line 236
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 237
    iput v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    .line 239
    return-void
.end method

.method public resolve()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 109
    iget v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v4, v6, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 115
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-eqz v4, :cond_2

    .line 116
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ResolutionDimension;->state:I

    if-ne v4, v6, :cond_0

    .line 119
    iget v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ResolutionDimension;->value:F

    mul-float/2addr v4, v5

    iput v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    .line 121
    :cond_2
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-eqz v4, :cond_3

    .line 122
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ResolutionDimension;->state:I

    if-ne v4, v6, :cond_0

    .line 125
    iget v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ResolutionDimension;->value:F

    mul-float/2addr v4, v5

    iput v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    .line 127
    :cond_3
    iget v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v4, v6, :cond_6

    .line 132
    :cond_4
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-nez v4, :cond_5

    .line 133
    iput-object p0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 134
    iget v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    iput v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 139
    :goto_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->didResolve()V

    goto :goto_0

    .line 136
    :cond_5
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 137
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget v5, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v4, v5

    iput v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    goto :goto_1

    .line 140
    :cond_6
    iget v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v4, v6, :cond_d

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v4, v6, :cond_d

    .line 148
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 149
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v4

    iget-wide v6, v4, Landroid/support/constraint/solver/Metrics;->centerConnectionResolved:J

    add-long/2addr v6, v10

    iput-wide v6, v4, Landroid/support/constraint/solver/Metrics;->centerConnectionResolved:J

    .line 151
    :cond_7
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 152
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "distance":F
    const/high16 v3, 0x3f000000    # 0.5f

    .line 157
    .local v3, "percent":F
    iget v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_a

    .line 159
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    sub-float v0, v4, v5

    .line 164
    :goto_2
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v4, v5, :cond_8

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_b

    .line 166
    :cond_8
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    .line 167
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v3, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 172
    :goto_3
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 173
    .local v1, "margin":I
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    .line 174
    .local v2, "oppositeMargin":I
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    if-ne v4, v5, :cond_9

    .line 175
    const/high16 v3, 0x3f000000    # 0.5f

    .line 176
    const/4 v1, 0x0

    .line 177
    const/4 v2, 0x0

    .line 180
    :cond_9
    int-to-float v4, v1

    sub-float/2addr v0, v4

    .line 181
    int-to-float v4, v2

    sub-float/2addr v0, v4

    .line 183
    iget v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_c

    .line 185
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    int-to-float v6, v2

    add-float/2addr v5, v6

    mul-float v6, v0, v3

    add-float/2addr v5, v6

    iput v5, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 187
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    int-to-float v5, v1

    sub-float/2addr v4, v5

    sub-float v5, v9, v3

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    iput v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 194
    :goto_4
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 195
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->didResolve()V

    goto/16 :goto_0

    .line 161
    .end local v1    # "margin":I
    .end local v2    # "oppositeMargin":I
    :cond_a
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    sub-float v0, v4, v5

    goto :goto_2

    .line 169
    :cond_b
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    .line 170
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v3, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_3

    .line 189
    .restart local v1    # "margin":I
    .restart local v2    # "oppositeMargin":I
    :cond_c
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    mul-float v5, v0, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 190
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    int-to-float v6, v2

    sub-float/2addr v5, v6

    sub-float v6, v9, v3

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    goto :goto_4

    .line 196
    .end local v0    # "distance":F
    .end local v1    # "margin":I
    .end local v2    # "oppositeMargin":I
    .end local v3    # "percent":F
    :cond_d
    iget v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_f

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v4, :cond_f

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v4, v6, :cond_f

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v4, :cond_f

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v4, :cond_f

    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v4, v6, :cond_f

    .line 204
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 205
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v4

    iget-wide v6, v4, Landroid/support/constraint/solver/Metrics;->matchConnectionResolved:J

    add-long/2addr v6, v10

    iput-wide v6, v4, Landroid/support/constraint/solver/Metrics;->matchConnectionResolved:J

    .line 207
    :cond_e
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 208
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 210
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v4, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget v5, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v4, v5

    iput v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 211
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v6, v6, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v5, v6

    iput v5, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 213
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 214
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->didResolve()V

    goto/16 :goto_0

    .line 215
    :cond_f
    iget v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 216
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resolve()V

    goto/16 :goto_0
.end method

.method public resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V
    .locals 2
    .param p1, "target"    # Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .param p2, "offset"    # F

    .prologue
    .line 78
    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eq v0, p1, :cond_2

    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    .line 79
    :cond_0
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 80
    iput p2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 81
    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 82
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->invalidate()V

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 86
    :cond_2
    return-void
.end method

.method sType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 89
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 90
    const-string v0, "DIRECT"

    .line 100
    :goto_0
    return-object v0

    .line 91
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 92
    const-string v0, "CENTER"

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 94
    const-string v0, "MATCH"

    goto :goto_0

    .line 95
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 96
    const-string v0, "CHAIN"

    goto :goto_0

    .line 97
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 98
    const-string v0, "BARRIER"

    goto :goto_0

    .line 100
    :cond_4
    const-string v0, "UNCONNECTED"

    goto :goto_0
.end method

.method public setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V
    .locals 0
    .param p1, "opposite"    # Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .param p2, "oppositeOffset"    # F

    .prologue
    .line 290
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 291
    iput p2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    .line 292
    return-void
.end method

.method public setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V
    .locals 0
    .param p1, "opposite"    # Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .param p2, "multiplier"    # I
    .param p3, "dimension"    # Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .prologue
    .line 295
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->opposite:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 296
    iput-object p3, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .line 297
    iput p2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    .line 298
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 221
    iput p1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    .line 222
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-ne v0, p0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RESOLVED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]  type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RESOLVED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    .line 72
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UNRESOLVED} type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public update()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 242
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 243
    .local v1, "targetAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-nez v1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v2, v3, :cond_1

    .line 247
    iput v4, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    .line 248
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iput v4, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    .line 250
    :cond_1
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 251
    .local v0, "margin":I
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->myAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v3, :cond_3

    .line 253
    :cond_2
    neg-int v0, v0

    .line 255
    :cond_3
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_0
.end method
