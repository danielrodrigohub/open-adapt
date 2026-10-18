.class public final Lcom/nike/adapt/adk/AdaptMarshaller;
.super Ljava/lang/Object;
.source "AdaptMarshaller.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/adk/AdaptMarshaller;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/AdaptMarshaller;

    invoke-direct {v0}, Lcom/nike/adapt/adk/AdaptMarshaller;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/AdaptMarshaller;->INSTANCE:Lcom/nike/adapt/adk/AdaptMarshaller;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
