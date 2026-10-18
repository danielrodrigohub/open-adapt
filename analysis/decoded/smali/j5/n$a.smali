.class public final Lj5/n$a;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Lp4/u0;

.field public final d:[I

.field public final e:[[[I

.field public final f:Lp4/u0;


# direct methods
.method public constructor <init>([I[Lp4/u0;[I[[[ILp4/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj5/n$a;->b:[I

    .line 3
    iput-object p2, p0, Lj5/n$a;->c:[Lp4/u0;

    .line 4
    iput-object p4, p0, Lj5/n$a;->e:[[[I

    .line 5
    iput-object p3, p0, Lj5/n$a;->d:[I

    .line 6
    iput-object p5, p0, Lj5/n$a;->f:Lp4/u0;

    .line 7
    array-length p1, p1

    iput p1, p0, Lj5/n$a;->a:I

    return-void
.end method
