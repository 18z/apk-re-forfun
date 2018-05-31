.class public abstract Lkotlin/jvm/internal/CallableReference;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Lkotlin/reflect/KCallable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/CallableReference$NoReceiver;
    }
.end annotation


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation
.end field


# instance fields
.field protected final receiver:Ljava/lang/Object;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation
.end field

.field private transient reflected:Lkotlin/reflect/KCallable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Lkotlin/jvm/internal/CallableReference$NoReceiver;->access$000()Lkotlin/jvm/internal/CallableReference$NoReceiver;

    move-result-object v0

    sput-object v0, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    sget-object v0, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lkotlin/reflect/KCallable;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/reflect/KCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lkotlin/reflect/KCallable;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/reflect/KCallable;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public compute()Lkotlin/reflect/KCallable;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 76
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->reflected:Lkotlin/reflect/KCallable;

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->computeReflected()Lkotlin/reflect/KCallable;

    move-result-object v0

    .line 79
    iput-object v0, p0, Lkotlin/jvm/internal/CallableReference;->reflected:Lkotlin/reflect/KCallable;

    :cond_0
    return-object v0
.end method

.method protected abstract computeReflected()Lkotlin/reflect/KCallable;
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lkotlin/reflect/KCallable;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KCallable;->getAnnotations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 71
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 108
    new-instance p0, Ljava/lang/AbstractMethodError;

    invoke-direct {p0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 0

    .line 100
    new-instance p0, Ljava/lang/AbstractMethodError;

    invoke-direct {p0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p0
.end method

.method public getParameters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KParameter;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lkotlin/reflect/KCallable;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KCallable;->getParameters()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getReflected()Lkotlin/reflect/KCallable;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 86
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->compute()Lkotlin/reflect/KCallable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 88
    new-instance p0, Lkotlin/jvm/KotlinReflectionNotSupportedError;

    invoke-direct {p0}, Lkotlin/jvm/KotlinReflectionNotSupportedError;-><init>()V

    throw p0

    :cond_0
    return-object v0
.end method

.method public getReturnType()Lkotlin/reflect/KType;
    .locals 0

    .line 133
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lkotlin/reflect/KCallable;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KCallable;->getReturnType()Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    .line 120
    new-instance p0, Ljava/lang/AbstractMethodError;

    invoke-direct {p0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeParameter;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 144
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lkotlin/reflect/KCallable;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KCallable;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVisibility()Lkotlin/reflect/KVisibility;
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 160
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lkotlin/reflect/KCallable;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KCallable;->getVisibility()Lkotlin/reflect/KVisibility;

    move-result-object p0

    return-object p0
.end method

.method public isAbstract()Z
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 178
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lkotlin/reflect/KCallable;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KCallable;->isAbstract()Z

    move-result p0

    return p0
.end method

.method public isFinal()Z
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 166
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lkotlin/reflect/KCallable;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KCallable;->isFinal()Z

    move-result p0

    return p0
.end method

.method public isOpen()Z
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 172
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lkotlin/reflect/KCallable;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KCallable;->isOpen()Z

    move-result p0

    return p0
.end method