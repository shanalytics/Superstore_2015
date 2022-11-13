{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "efe3a482",
   "metadata": {
    "papermill": {
     "duration": 0.006488,
     "end_time": "2022-11-13T22:04:47.442717",
     "exception": false,
     "start_time": "2022-11-13T22:04:47.436229",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Superstore Case Study\n",
    "## Introduction\n",
    "\n",
    "Superstore is seeking expertise to determine what works best for them in light of the market's intensifying competition and rising demand. They want to know which items, geographies, categories, and consumer groups to target and which to avoid. It is necessary to develop a regression model in order to forecast sales and profits and get insights on how to enhance operations in general.\n",
    "\n",
    "\n",
    "\n",
    "\n",
    "## Objectives\n",
    "\n",
    "The purpose of this analysis is to determine the impact of sales and profit in each category of the dataset. This will advise the shop on how to enhance delivery of orders and what goods to carry.\n",
    "\n",
    "# ASK\n",
    "\n",
    "The project aims to analyze the collected data to provide insight into the delivery schedule and locations with the greatest sales and profits. I will provide advice for establishing a business strategy based on the results.\n",
    "\n",
    "\n",
    "# PREPARE\n",
    "\n",
    "## Data\n",
    "\n",
    "The data includes 3 data sets which includes orders, users and returns. We have reduced the dataset's complexity to a single data file.\n",
    "\n",
    "# Metadata\n",
    "\n",
    "Row ID => Unique ID for each row.\n",
    "Order ID = unique order ID for each customer. \n",
    "Order Date = Order Date of the product. \n",
    "Ship Date => Shipping Date of the Product \n",
    "Ship Mode: Shipping Mode specified by the Customer \n",
    "Customer ID: A unique ID to identify each customer. \n",
    "Customer Name = \"Name of the Customer.\" Segment: The segment to which the customer belongs. \n",
    "Country => Country of residence of the customer. city = \"city of residence\" of the customer. \n",
    "State = state of residence of the customer. \n",
    "Postal Code: The postal code of every customer. Region: The region to which the customer belongs. \n",
    "Product ID is the unique ID of the product. Category: Category of the product ordered. Sub-Category: The category of the product ordered. \n",
    "Product Name = \"Name of the Product\" \n",
    "Sales = Sales of the Product. \n",
    "Quantity = quantity of the product. \n",
    "Discount provided. \n",
    "Profit = Profit/Loss incurred.\n",
    "\n",
    "# PROCESS\n",
    "\n",
    "It will be used since it can handle massive amounts of data. Moreover, data may be readily cleansed and displayed, facilitating analysis. The data were collected in a zip file before being converted to excel and submitted to R. The materials were submitted for additional review. \\ The information is presented in a tabular format with consistent column titles. Additionally, some column names were changed since they were unclear. The data type in the dates is inconsistent; the data appears in the wrong date format, which is \"dd/mm/yy,\" but is really a character and in \"mm/dd/yy\" format. As a result, the data type is modified to remedy the issue. In addition, the data types of the \"started at\" and \"ended at\" columns are specified.\n",
    "\n",
    "# Analysis\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "d397519a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:04:47.456771Z",
     "iopub.status.busy": "2022-11-13T22:04:47.454859Z",
     "iopub.status.idle": "2022-11-13T22:09:05.457421Z",
     "shell.execute_reply": "2022-11-13T22:09:05.455674Z"
    },
    "papermill": {
     "duration": 258.012606,
     "end_time": "2022-11-13T22:09:05.460604",
     "exception": false,
     "start_time": "2022-11-13T22:04:47.447998",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "also installing the dependency ‘vctrs’\n",
      "\n",
      "\n",
      "Warning message in install.packages(\"ggplot2\"):\n",
      "“installation of package ‘vctrs’ had non-zero exit status”\n",
      "Warning message in install.packages(\"ggplot2\"):\n",
      "“installation of package ‘ggplot2’ had non-zero exit status”\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "also installing the dependency ‘timechange’\n",
      "\n",
      "\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "also installing the dependency ‘vctrs’\n",
      "\n",
      "\n",
      "Warning message in install.packages(\"ggplot2\"):\n",
      "“installation of package ‘vctrs’ had non-zero exit status”\n",
      "Warning message in install.packages(\"ggplot2\"):\n",
      "“installation of package ‘ggplot2’ had non-zero exit status”\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "── \u001b[1mAttaching packages\u001b[22m ─────────────────────────────────────── tidyverse 1.3.2 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2\u001b[39m 3.3.6      \u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 0.3.5 \n",
      "\u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.1.8      \u001b[32m✔\u001b[39m \u001b[34mdplyr  \u001b[39m 1.0.10\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtidyr  \u001b[39m 1.2.1      \u001b[32m✔\u001b[39m \u001b[34mstringr\u001b[39m 1.4.1 \n",
      "\u001b[32m✔\u001b[39m \u001b[34mreadr  \u001b[39m 2.1.3      \u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 0.5.2 \n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "Loading required package: timechange\n",
      "\n",
      "\n",
      "Attaching package: ‘lubridate’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    date, intersect, setdiff, union\n",
      "\n",
      "\n",
      "here() starts at /kaggle/working\n",
      "\n",
      "\n",
      "Attaching package: ‘janitor’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:stats’:\n",
      "\n",
      "    chisq.test, fisher.test\n",
      "\n",
      "\n",
      "── \u001b[1mAttaching packages\u001b[22m ────────────────────────────────────── tidymodels 1.0.0 ──\n",
      "\n",
      "\u001b[32m✔\u001b[39m \u001b[34mbroom       \u001b[39m 1.0.1     \u001b[32m✔\u001b[39m \u001b[34mrsample     \u001b[39m 1.1.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdials       \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mtune        \u001b[39m 1.0.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34minfer       \u001b[39m 1.0.3     \u001b[32m✔\u001b[39m \u001b[34mworkflows   \u001b[39m 1.1.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mmodeldata   \u001b[39m 1.0.1     \u001b[32m✔\u001b[39m \u001b[34mworkflowsets\u001b[39m 1.0.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mparsnip     \u001b[39m 1.0.2     \u001b[32m✔\u001b[39m \u001b[34myardstick   \u001b[39m 1.1.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mrecipes     \u001b[39m 1.0.2     \n",
      "\n",
      "── \u001b[1mConflicts\u001b[22m ───────────────────────────────────────── tidymodels_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mscales\u001b[39m::\u001b[32mdiscard()\u001b[39m masks \u001b[34mpurrr\u001b[39m::discard()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m   masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mrecipes\u001b[39m::\u001b[32mfixed()\u001b[39m  masks \u001b[34mstringr\u001b[39m::fixed()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m      masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[31m✖\u001b[39m \u001b[34myardstick\u001b[39m::\u001b[32mspec()\u001b[39m masks \u001b[34mreadr\u001b[39m::spec()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mrecipes\u001b[39m::\u001b[32mstep()\u001b[39m   masks \u001b[34mstats\u001b[39m::step()\n",
      "\u001b[34m•\u001b[39m Use \u001b[32mtidymodels_prefer()\u001b[39m to resolve common conflicts.\n",
      "\n"
     ]
    }
   ],
   "source": [
    "#STEP ONE\n",
    "#install packages\n",
    "install.packages(\"tidyverse\")\n",
    "install.packages(\"ggplot2\")\n",
    "install.packages(\"lubridate\")\n",
    "install.packages(\"ggplot2\")\n",
    "install.packages(\"here\")\n",
    "install.packages(\"skimr\")\n",
    "install.packages(\"janitor\")\n",
    "install.packages(\"ggpubr\")\n",
    "install.packages(\"ggrepel\")\n",
    "install.packages(\"tidymodels\")\n",
    "install.packages(\"readr\")\n",
    "\n",
    "library(\"tidyverse\")#helps wrangle the data\n",
    "library(\"lubridate\")#helps wrangle date attributes\n",
    "library(\"ggplot2\")#helps visualize the data\n",
    "library(\"here\")#enables easy file referencing by using the top-level directory of a file project to easily build file path\n",
    "library(\"skimr\")#is designed to provide summary statistics about variables in data frames, tibbles, data tables and vectors\n",
    "library(\"janitor\")#perfectly format data.frame column names; provide quick counts of variable combinations (\n",
    "library(\"ggpubr\")#facilitates the creation of beautiful ggplot2-based graphs for researcher with non-advanced programming backgrounds\n",
    "library(\"ggrepel\")#Provides text and label geoms for 'ggplot2' that help to avoid overlapping text labels. \n",
    "library(\"tidymodels\")#used for for modeling and statistical analysis that share the underlying design philosophy, grammar\n",
    "library(\"readr\")#makes it easy to get rectangular data out of comma separated (csv), tab separated (tsv) or fixed width files (fwf\n",
    "library(\"dplyr\")\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "bc7eda67",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:05.522783Z",
     "iopub.status.busy": "2022-11-13T22:09:05.490952Z",
     "iopub.status.idle": "2022-11-13T22:09:05.541000Z",
     "shell.execute_reply": "2022-11-13T22:09:05.539240Z"
    },
    "papermill": {
     "duration": 0.071044,
     "end_time": "2022-11-13T22:09:05.543760",
     "exception": false,
     "start_time": "2022-11-13T22:09:05.472716",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'/kaggle/working'"
      ],
      "text/latex": [
       "'/kaggle/working'"
      ],
      "text/markdown": [
       "'/kaggle/working'"
      ],
      "text/plain": [
       "[1] \"/kaggle/working\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Step Two \n",
    "getwd()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "2275d415",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:05.562554Z",
     "iopub.status.busy": "2022-11-13T22:09:05.560669Z",
     "iopub.status.idle": "2022-11-13T22:09:05.574753Z",
     "shell.execute_reply": "2022-11-13T22:09:05.573285Z"
    },
    "papermill": {
     "duration": 0.025175,
     "end_time": "2022-11-13T22:09:05.576617",
     "exception": false,
     "start_time": "2022-11-13T22:09:05.551442",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "setwd('/kaggle/working')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "7dd890a8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:05.594660Z",
     "iopub.status.busy": "2022-11-13T22:09:05.593004Z",
     "iopub.status.idle": "2022-11-13T22:09:05.836215Z",
     "shell.execute_reply": "2022-11-13T22:09:05.834274Z"
    },
    "papermill": {
     "duration": 0.254608,
     "end_time": "2022-11-13T22:09:05.838349",
     "exception": false,
     "start_time": "2022-11-13T22:09:05.583741",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 25</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Row ID</th><th scope=col>Order Priority</th><th scope=col>Discount</th><th scope=col>Unit Price</th><th scope=col>Shipping Cost</th><th scope=col>Customer ID</th><th scope=col>Customer Name</th><th scope=col>Ship Mode</th><th scope=col>Customer Segment</th><th scope=col>Product Category</th><th scope=col>⋯</th><th scope=col>Region</th><th scope=col>State or Province</th><th scope=col>City</th><th scope=col>Postal Code</th><th scope=col>Order Date</th><th scope=col>Ship Date</th><th scope=col>Profit</th><th scope=col>Quantity ordered new</th><th scope=col>Sales</th><th scope=col>Order ID</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>⋯</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>20847</td><td>High         </td><td>0.01</td><td>  2.84</td><td> 0.93</td><td> 3</td><td>Bonnie Potter    </td><td>Express Air   </td><td>Corporate     </td><td>Office Supplies</td><td>⋯</td><td>West   </td><td>Washington</td><td>Anacortes  </td><td>98221</td><td>2015-01-07</td><td>2015-01-08</td><td>   4.5600</td><td> 4</td><td>  13.01</td><td>88522</td></tr>\n",
       "\t<tr><td>20228</td><td>Not Specified</td><td>0.02</td><td>500.98</td><td>26.00</td><td> 5</td><td>Ronnie Proctor   </td><td>Delivery Truck</td><td>Home Office   </td><td>Furniture      </td><td>⋯</td><td>West   </td><td>California</td><td>San Gabriel</td><td>91776</td><td>2015-06-13</td><td>2015-06-15</td><td>4390.3665</td><td>12</td><td>6362.85</td><td>90193</td></tr>\n",
       "\t<tr><td>21776</td><td>Critical     </td><td>0.06</td><td>  9.48</td><td> 7.29</td><td>11</td><td>Marcus Dunlap    </td><td>Regular Air   </td><td>Home Office   </td><td>Furniture      </td><td>⋯</td><td>East   </td><td>New Jersey</td><td>Roselle    </td><td> 7203</td><td>2015-02-15</td><td>2015-02-17</td><td> -53.8096</td><td>22</td><td> 211.15</td><td>90192</td></tr>\n",
       "\t<tr><td>24844</td><td>Medium       </td><td>0.09</td><td> 78.69</td><td>19.99</td><td>14</td><td>Gwendolyn F Tyson</td><td>Regular Air   </td><td>Small Business</td><td>Furniture      </td><td>⋯</td><td>Central</td><td>Minnesota </td><td>Prior Lake </td><td>55372</td><td>2015-05-12</td><td>2015-05-14</td><td> 803.4705</td><td>16</td><td>1164.45</td><td>86838</td></tr>\n",
       "\t<tr><td>24846</td><td>Medium       </td><td>0.08</td><td>  3.28</td><td> 2.31</td><td>14</td><td>Gwendolyn F Tyson</td><td>Regular Air   </td><td>Small Business</td><td>Office Supplies</td><td>⋯</td><td>Central</td><td>Minnesota </td><td>Prior Lake </td><td>55372</td><td>2015-05-12</td><td>2015-05-13</td><td> -24.0300</td><td> 7</td><td>  22.23</td><td>86838</td></tr>\n",
       "\t<tr><td>24847</td><td>Medium       </td><td>0.05</td><td>  3.28</td><td> 4.20</td><td>14</td><td>Gwendolyn F Tyson</td><td>Regular Air   </td><td>Small Business</td><td>Office Supplies</td><td>⋯</td><td>Central</td><td>Minnesota </td><td>Prior Lake </td><td>55372</td><td>2015-05-12</td><td>2015-05-13</td><td> -37.0300</td><td> 4</td><td>  13.99</td><td>86838</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 25\n",
       "\\begin{tabular}{lllllllllllllllllllll}\n",
       " Row ID & Order Priority & Discount & Unit Price & Shipping Cost & Customer ID & Customer Name & Ship Mode & Customer Segment & Product Category & ⋯ & Region & State or Province & City & Postal Code & Order Date & Ship Date & Profit & Quantity ordered new & Sales & Order ID\\\\\n",
       " <dbl> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <chr> & <chr> & <chr> & ⋯ & <chr> & <chr> & <chr> & <dbl> & <dttm> & <dttm> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 20847 & High          & 0.01 &   2.84 &  0.93 &  3 & Bonnie Potter     & Express Air    & Corporate      & Office Supplies & ⋯ & West    & Washington & Anacortes   & 98221 & 2015-01-07 & 2015-01-08 &    4.5600 &  4 &   13.01 & 88522\\\\\n",
       "\t 20228 & Not Specified & 0.02 & 500.98 & 26.00 &  5 & Ronnie Proctor    & Delivery Truck & Home Office    & Furniture       & ⋯ & West    & California & San Gabriel & 91776 & 2015-06-13 & 2015-06-15 & 4390.3665 & 12 & 6362.85 & 90193\\\\\n",
       "\t 21776 & Critical      & 0.06 &   9.48 &  7.29 & 11 & Marcus Dunlap     & Regular Air    & Home Office    & Furniture       & ⋯ & East    & New Jersey & Roselle     &  7203 & 2015-02-15 & 2015-02-17 &  -53.8096 & 22 &  211.15 & 90192\\\\\n",
       "\t 24844 & Medium        & 0.09 &  78.69 & 19.99 & 14 & Gwendolyn F Tyson & Regular Air    & Small Business & Furniture       & ⋯ & Central & Minnesota  & Prior Lake  & 55372 & 2015-05-12 & 2015-05-14 &  803.4705 & 16 & 1164.45 & 86838\\\\\n",
       "\t 24846 & Medium        & 0.08 &   3.28 &  2.31 & 14 & Gwendolyn F Tyson & Regular Air    & Small Business & Office Supplies & ⋯ & Central & Minnesota  & Prior Lake  & 55372 & 2015-05-12 & 2015-05-13 &  -24.0300 &  7 &   22.23 & 86838\\\\\n",
       "\t 24847 & Medium        & 0.05 &   3.28 &  4.20 & 14 & Gwendolyn F Tyson & Regular Air    & Small Business & Office Supplies & ⋯ & Central & Minnesota  & Prior Lake  & 55372 & 2015-05-12 & 2015-05-13 &  -37.0300 &  4 &   13.99 & 86838\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 25\n",
       "\n",
       "| Row ID &lt;dbl&gt; | Order Priority &lt;chr&gt; | Discount &lt;dbl&gt; | Unit Price &lt;dbl&gt; | Shipping Cost &lt;dbl&gt; | Customer ID &lt;dbl&gt; | Customer Name &lt;chr&gt; | Ship Mode &lt;chr&gt; | Customer Segment &lt;chr&gt; | Product Category &lt;chr&gt; | ⋯ ⋯ | Region &lt;chr&gt; | State or Province &lt;chr&gt; | City &lt;chr&gt; | Postal Code &lt;dbl&gt; | Order Date &lt;dttm&gt; | Ship Date &lt;dttm&gt; | Profit &lt;dbl&gt; | Quantity ordered new &lt;dbl&gt; | Sales &lt;dbl&gt; | Order ID &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 20847 | High          | 0.01 |   2.84 |  0.93 |  3 | Bonnie Potter     | Express Air    | Corporate      | Office Supplies | ⋯ | West    | Washington | Anacortes   | 98221 | 2015-01-07 | 2015-01-08 |    4.5600 |  4 |   13.01 | 88522 |\n",
       "| 20228 | Not Specified | 0.02 | 500.98 | 26.00 |  5 | Ronnie Proctor    | Delivery Truck | Home Office    | Furniture       | ⋯ | West    | California | San Gabriel | 91776 | 2015-06-13 | 2015-06-15 | 4390.3665 | 12 | 6362.85 | 90193 |\n",
       "| 21776 | Critical      | 0.06 |   9.48 |  7.29 | 11 | Marcus Dunlap     | Regular Air    | Home Office    | Furniture       | ⋯ | East    | New Jersey | Roselle     |  7203 | 2015-02-15 | 2015-02-17 |  -53.8096 | 22 |  211.15 | 90192 |\n",
       "| 24844 | Medium        | 0.09 |  78.69 | 19.99 | 14 | Gwendolyn F Tyson | Regular Air    | Small Business | Furniture       | ⋯ | Central | Minnesota  | Prior Lake  | 55372 | 2015-05-12 | 2015-05-14 |  803.4705 | 16 | 1164.45 | 86838 |\n",
       "| 24846 | Medium        | 0.08 |   3.28 |  2.31 | 14 | Gwendolyn F Tyson | Regular Air    | Small Business | Office Supplies | ⋯ | Central | Minnesota  | Prior Lake  | 55372 | 2015-05-12 | 2015-05-13 |  -24.0300 |  7 |   22.23 | 86838 |\n",
       "| 24847 | Medium        | 0.05 |   3.28 |  4.20 | 14 | Gwendolyn F Tyson | Regular Air    | Small Business | Office Supplies | ⋯ | Central | Minnesota  | Prior Lake  | 55372 | 2015-05-12 | 2015-05-13 |  -37.0300 |  4 |   13.99 | 86838 |\n",
       "\n"
      ],
      "text/plain": [
       "  Row ID Order Priority Discount Unit Price Shipping Cost Customer ID\n",
       "1 20847  High           0.01       2.84      0.93          3         \n",
       "2 20228  Not Specified  0.02     500.98     26.00          5         \n",
       "3 21776  Critical       0.06       9.48      7.29         11         \n",
       "4 24844  Medium         0.09      78.69     19.99         14         \n",
       "5 24846  Medium         0.08       3.28      2.31         14         \n",
       "6 24847  Medium         0.05       3.28      4.20         14         \n",
       "  Customer Name     Ship Mode      Customer Segment Product Category ⋯ Region \n",
       "1 Bonnie Potter     Express Air    Corporate        Office Supplies  ⋯ West   \n",
       "2 Ronnie Proctor    Delivery Truck Home Office      Furniture        ⋯ West   \n",
       "3 Marcus Dunlap     Regular Air    Home Office      Furniture        ⋯ East   \n",
       "4 Gwendolyn F Tyson Regular Air    Small Business   Furniture        ⋯ Central\n",
       "5 Gwendolyn F Tyson Regular Air    Small Business   Office Supplies  ⋯ Central\n",
       "6 Gwendolyn F Tyson Regular Air    Small Business   Office Supplies  ⋯ Central\n",
       "  State or Province City        Postal Code Order Date Ship Date  Profit   \n",
       "1 Washington        Anacortes   98221       2015-01-07 2015-01-08    4.5600\n",
       "2 California        San Gabriel 91776       2015-06-13 2015-06-15 4390.3665\n",
       "3 New Jersey        Roselle      7203       2015-02-15 2015-02-17  -53.8096\n",
       "4 Minnesota         Prior Lake  55372       2015-05-12 2015-05-14  803.4705\n",
       "5 Minnesota         Prior Lake  55372       2015-05-12 2015-05-13  -24.0300\n",
       "6 Minnesota         Prior Lake  55372       2015-05-12 2015-05-13  -37.0300\n",
       "  Quantity ordered new Sales   Order ID\n",
       "1  4                     13.01 88522   \n",
       "2 12                   6362.85 90193   \n",
       "3 22                    211.15 90192   \n",
       "4 16                   1164.45 86838   \n",
       "5  7                     22.23 86838   \n",
       "6  4                     13.99 86838   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Order ID</th><th scope=col>Status</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td> 65</td><td>Returned</td></tr>\n",
       "\t<tr><td>612</td><td>Returned</td></tr>\n",
       "\t<tr><td>614</td><td>Returned</td></tr>\n",
       "\t<tr><td>678</td><td>Returned</td></tr>\n",
       "\t<tr><td>710</td><td>Returned</td></tr>\n",
       "\t<tr><td>740</td><td>Returned</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 2\n",
       "\\begin{tabular}{ll}\n",
       " Order ID & Status\\\\\n",
       " <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t  65 & Returned\\\\\n",
       "\t 612 & Returned\\\\\n",
       "\t 614 & Returned\\\\\n",
       "\t 678 & Returned\\\\\n",
       "\t 710 & Returned\\\\\n",
       "\t 740 & Returned\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 2\n",
       "\n",
       "| Order ID &lt;dbl&gt; | Status &lt;chr&gt; |\n",
       "|---|---|\n",
       "|  65 | Returned |\n",
       "| 612 | Returned |\n",
       "| 614 | Returned |\n",
       "| 678 | Returned |\n",
       "| 710 | Returned |\n",
       "| 740 | Returned |\n",
       "\n"
      ],
      "text/plain": [
       "  Order ID Status  \n",
       "1  65      Returned\n",
       "2 612      Returned\n",
       "3 614      Returned\n",
       "4 678      Returned\n",
       "5 710      Returned\n",
       "6 740      Returned"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 4 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Region</th><th scope=col>Manager</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Central</td><td>Chris  </td></tr>\n",
       "\t<tr><td>East   </td><td>Erin   </td></tr>\n",
       "\t<tr><td>South  </td><td>Sam    </td></tr>\n",
       "\t<tr><td>West   </td><td>William</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 4 × 2\n",
       "\\begin{tabular}{ll}\n",
       " Region & Manager\\\\\n",
       " <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t Central & Chris  \\\\\n",
       "\t East    & Erin   \\\\\n",
       "\t South   & Sam    \\\\\n",
       "\t West    & William\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 4 × 2\n",
       "\n",
       "| Region &lt;chr&gt; | Manager &lt;chr&gt; |\n",
       "|---|---|\n",
       "| Central | Chris   |\n",
       "| East    | Erin    |\n",
       "| South   | Sam     |\n",
       "| West    | William |\n",
       "\n"
      ],
      "text/plain": [
       "  Region  Manager\n",
       "1 Central Chris  \n",
       "2 East    Erin   \n",
       "3 South   Sam    \n",
       "4 West    William"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Upload Data \n",
    "library(readxl)\n",
    "orders <- read_excel(\"../input/superstore-data-2015/orders.xlsx\")\n",
    "head(orders)\n",
    "library(readxl)\n",
    "returns <- read_excel(\"../input/superstore-data-2015/returns.xlsx\")\n",
    "head(returns)\n",
    "library(readxl)\n",
    "users <- read_excel(\"../input/superstore-data-2015/users.xlsx\")\n",
    "head(users)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c426ee30",
   "metadata": {
    "papermill": {
     "duration": 0.007262,
     "end_time": "2022-11-13T22:09:05.853109",
     "exception": false,
     "start_time": "2022-11-13T22:09:05.845847",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### STEP THREE: WRANGLE DATA AND COMBINE INTO ONE SINGLE FILE \n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "068ae2d3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:05.871578Z",
     "iopub.status.busy": "2022-11-13T22:09:05.869915Z",
     "iopub.status.idle": "2022-11-13T22:09:05.950969Z",
     "shell.execute_reply": "2022-11-13T22:09:05.948950Z"
    },
    "papermill": {
     "duration": 0.093435,
     "end_time": "2022-11-13T22:09:05.953705",
     "exception": false,
     "start_time": "2022-11-13T22:09:05.860270",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [1,952 × 25] (S3: tbl_df/tbl/data.frame)\n",
      " $ Row ID              : num [1:1952] 20847 20228 21776 24844 24846 ...\n",
      " $ Order Priority      : chr [1:1952] \"High\" \"Not Specified\" \"Critical\" \"Medium\" ...\n",
      " $ Discount            : num [1:1952] 0.01 0.02 0.06 0.09 0.08 0.05 0.05 0 0.01 0.04 ...\n",
      " $ Unit Price          : num [1:1952] 2.84 500.98 9.48 78.69 3.28 ...\n",
      " $ Shipping Cost       : num [1:1952] 0.93 26 7.29 19.99 2.31 ...\n",
      " $ Customer ID         : num [1:1952] 3 5 11 14 14 14 14 15 15 16 ...\n",
      " $ Customer Name       : chr [1:1952] \"Bonnie Potter\" \"Ronnie Proctor\" \"Marcus Dunlap\" \"Gwendolyn F Tyson\" ...\n",
      " $ Ship Mode           : chr [1:1952] \"Express Air\" \"Delivery Truck\" \"Regular Air\" \"Regular Air\" ...\n",
      " $ Customer Segment    : chr [1:1952] \"Corporate\" \"Home Office\" \"Home Office\" \"Small Business\" ...\n",
      " $ Product Category    : chr [1:1952] \"Office Supplies\" \"Furniture\" \"Furniture\" \"Furniture\" ...\n",
      " $ Product Sub-Category: chr [1:1952] \"Pens & Art Supplies\" \"Chairs & Chairmats\" \"Office Furnishings\" \"Office Furnishings\" ...\n",
      " $ Product Container   : chr [1:1952] \"Wrap Bag\" \"Jumbo Drum\" \"Small Pack\" \"Small Box\" ...\n",
      " $ Product Name        : chr [1:1952] \"SANFORD Liquid Accent™ Tank-Style Highlighters\" \"Global Troy™ Executive Leather Low-Back Tilter\" \"DAX Two-Tone Rosewood/Black Document Frame, Desktop, 5 x 7\" \"Howard Miller 12-3/4 Diameter Accuwave DS ™ Wall Clock\" ...\n",
      " $ Product Base Margin : num [1:1952] 0.54 0.6 0.45 0.43 0.56 0.56 0.36 0.38 0.4 0.39 ...\n",
      " $ Country             : chr [1:1952] \"United States\" \"United States\" \"United States\" \"United States\" ...\n",
      " $ Region              : chr [1:1952] \"West\" \"West\" \"East\" \"Central\" ...\n",
      " $ State or Province   : chr [1:1952] \"Washington\" \"California\" \"New Jersey\" \"Minnesota\" ...\n",
      " $ City                : chr [1:1952] \"Anacortes\" \"San Gabriel\" \"Roselle\" \"Prior Lake\" ...\n",
      " $ Postal Code         : num [1:1952] 98221 91776 7203 55372 55372 ...\n",
      " $ Order Date          : POSIXct[1:1952], format: \"2015-01-07\" \"2015-06-13\" ...\n",
      " $ Ship Date           : POSIXct[1:1952], format: \"2015-01-08\" \"2015-06-15\" ...\n",
      " $ Profit              : num [1:1952] 4.56 4390.37 -53.81 803.47 -24.03 ...\n",
      " $ Quantity ordered new: num [1:1952] 4 12 22 16 7 4 4 7 10 6 ...\n",
      " $ Sales               : num [1:1952] 13 6362.9 211.2 1164.5 22.2 ...\n",
      " $ Order ID            : num [1:1952] 88522 90193 90192 86838 86838 ...\n",
      "tibble [4 × 2] (S3: tbl_df/tbl/data.frame)\n",
      " $ Region : chr [1:4] \"Central\" \"East\" \"South\" \"West\"\n",
      " $ Manager: chr [1:4] \"Chris\" \"Erin\" \"Sam\" \"William\"\n",
      "tibble [1,634 × 2] (S3: tbl_df/tbl/data.frame)\n",
      " $ Order ID: num [1:1634] 65 612 614 678 710 740 775 833 902 3300 ...\n",
      " $ Status  : chr [1:1634] \"Returned\" \"Returned\" \"Returned\" \"Returned\" ...\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'Row ID'</li><li>'Order Priority'</li><li>'Discount'</li><li>'Unit Price'</li><li>'Shipping Cost'</li><li>'Customer ID'</li><li>'Customer Name'</li><li>'Ship Mode'</li><li>'Customer Segment'</li><li>'Product Category'</li><li>'Product Sub-Category'</li><li>'Product Container'</li><li>'Product Name'</li><li>'Product Base Margin'</li><li>'Country'</li><li>'Region'</li><li>'State or Province'</li><li>'City'</li><li>'Postal Code'</li><li>'Order Date'</li><li>'Ship Date'</li><li>'Profit'</li><li>'Quantity ordered new'</li><li>'Sales'</li><li>'Order ID'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'Row ID'\n",
       "\\item 'Order Priority'\n",
       "\\item 'Discount'\n",
       "\\item 'Unit Price'\n",
       "\\item 'Shipping Cost'\n",
       "\\item 'Customer ID'\n",
       "\\item 'Customer Name'\n",
       "\\item 'Ship Mode'\n",
       "\\item 'Customer Segment'\n",
       "\\item 'Product Category'\n",
       "\\item 'Product Sub-Category'\n",
       "\\item 'Product Container'\n",
       "\\item 'Product Name'\n",
       "\\item 'Product Base Margin'\n",
       "\\item 'Country'\n",
       "\\item 'Region'\n",
       "\\item 'State or Province'\n",
       "\\item 'City'\n",
       "\\item 'Postal Code'\n",
       "\\item 'Order Date'\n",
       "\\item 'Ship Date'\n",
       "\\item 'Profit'\n",
       "\\item 'Quantity ordered new'\n",
       "\\item 'Sales'\n",
       "\\item 'Order ID'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'Row ID'\n",
       "2. 'Order Priority'\n",
       "3. 'Discount'\n",
       "4. 'Unit Price'\n",
       "5. 'Shipping Cost'\n",
       "6. 'Customer ID'\n",
       "7. 'Customer Name'\n",
       "8. 'Ship Mode'\n",
       "9. 'Customer Segment'\n",
       "10. 'Product Category'\n",
       "11. 'Product Sub-Category'\n",
       "12. 'Product Container'\n",
       "13. 'Product Name'\n",
       "14. 'Product Base Margin'\n",
       "15. 'Country'\n",
       "16. 'Region'\n",
       "17. 'State or Province'\n",
       "18. 'City'\n",
       "19. 'Postal Code'\n",
       "20. 'Order Date'\n",
       "21. 'Ship Date'\n",
       "22. 'Profit'\n",
       "23. 'Quantity ordered new'\n",
       "24. 'Sales'\n",
       "25. 'Order ID'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"Row ID\"               \"Order Priority\"       \"Discount\"            \n",
       " [4] \"Unit Price\"           \"Shipping Cost\"        \"Customer ID\"         \n",
       " [7] \"Customer Name\"        \"Ship Mode\"            \"Customer Segment\"    \n",
       "[10] \"Product Category\"     \"Product Sub-Category\" \"Product Container\"   \n",
       "[13] \"Product Name\"         \"Product Base Margin\"  \"Country\"             \n",
       "[16] \"Region\"               \"State or Province\"    \"City\"                \n",
       "[19] \"Postal Code\"          \"Order Date\"           \"Ship Date\"           \n",
       "[22] \"Profit\"               \"Quantity ordered new\" \"Sales\"               \n",
       "[25] \"Order ID\"            "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'Region'</li><li>'Manager'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'Region'\n",
       "\\item 'Manager'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'Region'\n",
       "2. 'Manager'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"Region\"  \"Manager\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'Order ID'</li><li>'Status'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'Order ID'\n",
       "\\item 'Status'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'Order ID'\n",
       "2. 'Status'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"Order ID\" \"Status\"  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Compare all column names in the data sets\n",
    "str(orders)\n",
    "str(users)\n",
    "str(returns)\n",
    "\n",
    "colnames(orders)\n",
    "colnames(users)\n",
    "colnames(returns)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "abb2ea20",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:05.974404Z",
     "iopub.status.busy": "2022-11-13T22:09:05.972418Z",
     "iopub.status.idle": "2022-11-13T22:09:06.008653Z",
     "shell.execute_reply": "2022-11-13T22:09:06.006938Z"
    },
    "papermill": {
     "duration": 0.048564,
     "end_time": "2022-11-13T22:09:06.010781",
     "exception": false,
     "start_time": "2022-11-13T22:09:05.962217",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1952"
      ],
      "text/latex": [
       "1952"
      ],
      "text/markdown": [
       "1952"
      ],
      "text/plain": [
       "[1] 1952"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "1634"
      ],
      "text/latex": [
       "1634"
      ],
      "text/markdown": [
       "1634"
      ],
      "text/plain": [
       "[1] 1634"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "1952"
      ],
      "text/latex": [
       "1952"
      ],
      "text/markdown": [
       "1952"
      ],
      "text/plain": [
       "[1] 1952"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "1634"
      ],
      "text/latex": [
       "1634"
      ],
      "text/markdown": [
       "1634"
      ],
      "text/plain": [
       "[1] 1634"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Note that both datasets have the 'Order Id' field - this can be used to merge the datasets.\n",
    "#How many unique participants are there in each data frame? It looks like there may be more participants in the daily activity dataset than the sleep dataset\n",
    "nrow(orders)\n",
    "nrow(returns)\n",
    "\n",
    "n_distinct(orders)\n",
    "n_distinct(returns)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "215ac889",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:06.033563Z",
     "iopub.status.busy": "2022-11-13T22:09:06.031979Z",
     "iopub.status.idle": "2022-11-13T22:09:06.585735Z",
     "shell.execute_reply": "2022-11-13T22:09:06.584122Z"
    },
    "papermill": {
     "duration": 0.567954,
     "end_time": "2022-11-13T22:09:06.588053",
     "exception": false,
     "start_time": "2022-11-13T22:09:06.020099",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 27</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Row ID</th><th scope=col>Order Priority</th><th scope=col>Discount</th><th scope=col>Unit Price</th><th scope=col>Shipping Cost</th><th scope=col>Customer ID</th><th scope=col>Customer Name</th><th scope=col>Ship Mode</th><th scope=col>Customer Segment</th><th scope=col>Product Category</th><th scope=col>⋯</th><th scope=col>City</th><th scope=col>Postal Code</th><th scope=col>Order Date</th><th scope=col>Ship Date</th><th scope=col>Profit</th><th scope=col>Quantity ordered new</th><th scope=col>Sales</th><th scope=col>Order ID</th><th scope=col>Manager</th><th scope=col>Status</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>⋯</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>1950</td><td>Medium       </td><td>0.01</td><td>  4.91</td><td> 0.50</td><td>117</td><td>Linda Weiss      </td><td>Regular Air   </td><td>Home Office   </td><td>Office Supplies</td><td>⋯</td><td>Seattle      </td><td>98103</td><td>2015-04-04</td><td>2015-04-06</td><td> 112.060</td><td>47</td><td> 228.46</td><td>13959</td><td>William</td><td>Returned</td></tr>\n",
       "\t<tr><td>1951</td><td>Medium       </td><td>0.09</td><td>  4.00</td><td> 1.30</td><td>117</td><td>Linda Weiss      </td><td>Express Air   </td><td>Home Office   </td><td>Office Supplies</td><td>⋯</td><td>Seattle      </td><td>98103</td><td>2015-04-04</td><td>2015-04-06</td><td>  16.790</td><td>19</td><td>  77.61</td><td>13959</td><td>William</td><td>Returned</td></tr>\n",
       "\t<tr><td>5302</td><td>High         </td><td>0.01</td><td>  8.33</td><td> 1.99</td><td>308</td><td>Glen Caldwell    </td><td>Regular Air   </td><td>Small Business</td><td>Technology     </td><td>⋯</td><td>Seattle      </td><td>98115</td><td>2015-02-14</td><td>2015-02-15</td><td>  10.740</td><td>32</td><td> 280.62</td><td>37760</td><td>William</td><td>Returned</td></tr>\n",
       "\t<tr><td>1147</td><td>Medium       </td><td>0.08</td><td>  2.94</td><td> 0.96</td><td>491</td><td>Toni Swanson     </td><td>Regular Air   </td><td>Consumer      </td><td>Office Supplies</td><td>⋯</td><td>New York City</td><td>10154</td><td>2015-05-15</td><td>2015-05-17</td><td>  -2.120</td><td>23</td><td>  66.70</td><td> 8353</td><td>Erin   </td><td>Returned</td></tr>\n",
       "\t<tr><td>2368</td><td>Medium       </td><td>0.00</td><td>  6.88</td><td> 2.00</td><td>553</td><td>Kristine Connolly</td><td>Express Air   </td><td>Home Office   </td><td>Office Supplies</td><td>⋯</td><td>Los Angeles  </td><td>90008</td><td>2015-01-28</td><td>2015-01-29</td><td>  34.068</td><td>36</td><td> 267.53</td><td>17155</td><td>William</td><td>Returned</td></tr>\n",
       "\t<tr><td>7893</td><td>Not Specified</td><td>0.00</td><td>236.97</td><td>59.24</td><td>640</td><td>Neal Wolfe       </td><td>Delivery Truck</td><td>Consumer      </td><td>Furniture      </td><td>⋯</td><td>Seattle      </td><td>98119</td><td>2015-02-14</td><td>2015-02-15</td><td>1192.040</td><td>34</td><td>6686.34</td><td>56452</td><td>William</td><td>Returned</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 27\n",
       "\\begin{tabular}{lllllllllllllllllllll}\n",
       " Row ID & Order Priority & Discount & Unit Price & Shipping Cost & Customer ID & Customer Name & Ship Mode & Customer Segment & Product Category & ⋯ & City & Postal Code & Order Date & Ship Date & Profit & Quantity ordered new & Sales & Order ID & Manager & Status\\\\\n",
       " <dbl> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <chr> & <chr> & <chr> & ⋯ & <chr> & <dbl> & <dttm> & <dttm> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t 1950 & Medium        & 0.01 &   4.91 &  0.50 & 117 & Linda Weiss       & Regular Air    & Home Office    & Office Supplies & ⋯ & Seattle       & 98103 & 2015-04-04 & 2015-04-06 &  112.060 & 47 &  228.46 & 13959 & William & Returned\\\\\n",
       "\t 1951 & Medium        & 0.09 &   4.00 &  1.30 & 117 & Linda Weiss       & Express Air    & Home Office    & Office Supplies & ⋯ & Seattle       & 98103 & 2015-04-04 & 2015-04-06 &   16.790 & 19 &   77.61 & 13959 & William & Returned\\\\\n",
       "\t 5302 & High          & 0.01 &   8.33 &  1.99 & 308 & Glen Caldwell     & Regular Air    & Small Business & Technology      & ⋯ & Seattle       & 98115 & 2015-02-14 & 2015-02-15 &   10.740 & 32 &  280.62 & 37760 & William & Returned\\\\\n",
       "\t 1147 & Medium        & 0.08 &   2.94 &  0.96 & 491 & Toni Swanson      & Regular Air    & Consumer       & Office Supplies & ⋯ & New York City & 10154 & 2015-05-15 & 2015-05-17 &   -2.120 & 23 &   66.70 &  8353 & Erin    & Returned\\\\\n",
       "\t 2368 & Medium        & 0.00 &   6.88 &  2.00 & 553 & Kristine Connolly & Express Air    & Home Office    & Office Supplies & ⋯ & Los Angeles   & 90008 & 2015-01-28 & 2015-01-29 &   34.068 & 36 &  267.53 & 17155 & William & Returned\\\\\n",
       "\t 7893 & Not Specified & 0.00 & 236.97 & 59.24 & 640 & Neal Wolfe        & Delivery Truck & Consumer       & Furniture       & ⋯ & Seattle       & 98119 & 2015-02-14 & 2015-02-15 & 1192.040 & 34 & 6686.34 & 56452 & William & Returned\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 27\n",
       "\n",
       "| Row ID &lt;dbl&gt; | Order Priority &lt;chr&gt; | Discount &lt;dbl&gt; | Unit Price &lt;dbl&gt; | Shipping Cost &lt;dbl&gt; | Customer ID &lt;dbl&gt; | Customer Name &lt;chr&gt; | Ship Mode &lt;chr&gt; | Customer Segment &lt;chr&gt; | Product Category &lt;chr&gt; | ⋯ ⋯ | City &lt;chr&gt; | Postal Code &lt;dbl&gt; | Order Date &lt;dttm&gt; | Ship Date &lt;dttm&gt; | Profit &lt;dbl&gt; | Quantity ordered new &lt;dbl&gt; | Sales &lt;dbl&gt; | Order ID &lt;dbl&gt; | Manager &lt;chr&gt; | Status &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1950 | Medium        | 0.01 |   4.91 |  0.50 | 117 | Linda Weiss       | Regular Air    | Home Office    | Office Supplies | ⋯ | Seattle       | 98103 | 2015-04-04 | 2015-04-06 |  112.060 | 47 |  228.46 | 13959 | William | Returned |\n",
       "| 1951 | Medium        | 0.09 |   4.00 |  1.30 | 117 | Linda Weiss       | Express Air    | Home Office    | Office Supplies | ⋯ | Seattle       | 98103 | 2015-04-04 | 2015-04-06 |   16.790 | 19 |   77.61 | 13959 | William | Returned |\n",
       "| 5302 | High          | 0.01 |   8.33 |  1.99 | 308 | Glen Caldwell     | Regular Air    | Small Business | Technology      | ⋯ | Seattle       | 98115 | 2015-02-14 | 2015-02-15 |   10.740 | 32 |  280.62 | 37760 | William | Returned |\n",
       "| 1147 | Medium        | 0.08 |   2.94 |  0.96 | 491 | Toni Swanson      | Regular Air    | Consumer       | Office Supplies | ⋯ | New York City | 10154 | 2015-05-15 | 2015-05-17 |   -2.120 | 23 |   66.70 |  8353 | Erin    | Returned |\n",
       "| 2368 | Medium        | 0.00 |   6.88 |  2.00 | 553 | Kristine Connolly | Express Air    | Home Office    | Office Supplies | ⋯ | Los Angeles   | 90008 | 2015-01-28 | 2015-01-29 |   34.068 | 36 |  267.53 | 17155 | William | Returned |\n",
       "| 7893 | Not Specified | 0.00 | 236.97 | 59.24 | 640 | Neal Wolfe        | Delivery Truck | Consumer       | Furniture       | ⋯ | Seattle       | 98119 | 2015-02-14 | 2015-02-15 | 1192.040 | 34 | 6686.34 | 56452 | William | Returned |\n",
       "\n"
      ],
      "text/plain": [
       "  Row ID Order Priority Discount Unit Price Shipping Cost Customer ID\n",
       "1 1950   Medium         0.01       4.91      0.50         117        \n",
       "2 1951   Medium         0.09       4.00      1.30         117        \n",
       "3 5302   High           0.01       8.33      1.99         308        \n",
       "4 1147   Medium         0.08       2.94      0.96         491        \n",
       "5 2368   Medium         0.00       6.88      2.00         553        \n",
       "6 7893   Not Specified  0.00     236.97     59.24         640        \n",
       "  Customer Name     Ship Mode      Customer Segment Product Category ⋯\n",
       "1 Linda Weiss       Regular Air    Home Office      Office Supplies  ⋯\n",
       "2 Linda Weiss       Express Air    Home Office      Office Supplies  ⋯\n",
       "3 Glen Caldwell     Regular Air    Small Business   Technology       ⋯\n",
       "4 Toni Swanson      Regular Air    Consumer         Office Supplies  ⋯\n",
       "5 Kristine Connolly Express Air    Home Office      Office Supplies  ⋯\n",
       "6 Neal Wolfe        Delivery Truck Consumer         Furniture        ⋯\n",
       "  City          Postal Code Order Date Ship Date  Profit   Quantity ordered new\n",
       "1 Seattle       98103       2015-04-04 2015-04-06  112.060 47                  \n",
       "2 Seattle       98103       2015-04-04 2015-04-06   16.790 19                  \n",
       "3 Seattle       98115       2015-02-14 2015-02-15   10.740 32                  \n",
       "4 New York City 10154       2015-05-15 2015-05-17   -2.120 23                  \n",
       "5 Los Angeles   90008       2015-01-28 2015-01-29   34.068 36                  \n",
       "6 Seattle       98119       2015-02-14 2015-02-15 1192.040 34                  \n",
       "  Sales   Order ID Manager Status  \n",
       "1  228.46 13959    William Returned\n",
       "2   77.61 13959    William Returned\n",
       "3  280.62 37760    William Returned\n",
       "4   66.70  8353    Erin    Returned\n",
       "5  267.53 17155    William Returned\n",
       "6 6686.34 56452    William Returned"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 26</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Row ID</th><th scope=col>Order Priority</th><th scope=col>Discount</th><th scope=col>Unit Price</th><th scope=col>Shipping Cost</th><th scope=col>Customer ID</th><th scope=col>Customer Name</th><th scope=col>Ship Mode</th><th scope=col>Customer Segment</th><th scope=col>Product Category</th><th scope=col>⋯</th><th scope=col>State or Province</th><th scope=col>City</th><th scope=col>Postal Code</th><th scope=col>Order Date</th><th scope=col>Ship Date</th><th scope=col>Profit</th><th scope=col>Quantity ordered new</th><th scope=col>Sales</th><th scope=col>Order ID</th><th scope=col>Manager</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>⋯</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>20847</td><td>High         </td><td>0.01</td><td>  2.84</td><td> 0.93</td><td> 3</td><td>Bonnie Potter    </td><td>Express Air   </td><td>Corporate     </td><td>Office Supplies</td><td>⋯</td><td>Washington</td><td>Anacortes  </td><td>98221</td><td>2015-01-07</td><td>2015-01-08</td><td>   4.5600</td><td> 4</td><td>  13.01</td><td>88522</td><td>William</td></tr>\n",
       "\t<tr><td>20228</td><td>Not Specified</td><td>0.02</td><td>500.98</td><td>26.00</td><td> 5</td><td>Ronnie Proctor   </td><td>Delivery Truck</td><td>Home Office   </td><td>Furniture      </td><td>⋯</td><td>California</td><td>San Gabriel</td><td>91776</td><td>2015-06-13</td><td>2015-06-15</td><td>4390.3665</td><td>12</td><td>6362.85</td><td>90193</td><td>William</td></tr>\n",
       "\t<tr><td>21776</td><td>Critical     </td><td>0.06</td><td>  9.48</td><td> 7.29</td><td>11</td><td>Marcus Dunlap    </td><td>Regular Air   </td><td>Home Office   </td><td>Furniture      </td><td>⋯</td><td>New Jersey</td><td>Roselle    </td><td> 7203</td><td>2015-02-15</td><td>2015-02-17</td><td> -53.8096</td><td>22</td><td> 211.15</td><td>90192</td><td>Erin   </td></tr>\n",
       "\t<tr><td>24844</td><td>Medium       </td><td>0.09</td><td> 78.69</td><td>19.99</td><td>14</td><td>Gwendolyn F Tyson</td><td>Regular Air   </td><td>Small Business</td><td>Furniture      </td><td>⋯</td><td>Minnesota </td><td>Prior Lake </td><td>55372</td><td>2015-05-12</td><td>2015-05-14</td><td> 803.4705</td><td>16</td><td>1164.45</td><td>86838</td><td>Chris  </td></tr>\n",
       "\t<tr><td>24846</td><td>Medium       </td><td>0.08</td><td>  3.28</td><td> 2.31</td><td>14</td><td>Gwendolyn F Tyson</td><td>Regular Air   </td><td>Small Business</td><td>Office Supplies</td><td>⋯</td><td>Minnesota </td><td>Prior Lake </td><td>55372</td><td>2015-05-12</td><td>2015-05-13</td><td> -24.0300</td><td> 7</td><td>  22.23</td><td>86838</td><td>Chris  </td></tr>\n",
       "\t<tr><td>24847</td><td>Medium       </td><td>0.05</td><td>  3.28</td><td> 4.20</td><td>14</td><td>Gwendolyn F Tyson</td><td>Regular Air   </td><td>Small Business</td><td>Office Supplies</td><td>⋯</td><td>Minnesota </td><td>Prior Lake </td><td>55372</td><td>2015-05-12</td><td>2015-05-13</td><td> -37.0300</td><td> 4</td><td>  13.99</td><td>86838</td><td>Chris  </td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 26\n",
       "\\begin{tabular}{lllllllllllllllllllll}\n",
       " Row ID & Order Priority & Discount & Unit Price & Shipping Cost & Customer ID & Customer Name & Ship Mode & Customer Segment & Product Category & ⋯ & State or Province & City & Postal Code & Order Date & Ship Date & Profit & Quantity ordered new & Sales & Order ID & Manager\\\\\n",
       " <dbl> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <chr> & <chr> & <chr> & ⋯ & <chr> & <chr> & <dbl> & <dttm> & <dttm> & <dbl> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 20847 & High          & 0.01 &   2.84 &  0.93 &  3 & Bonnie Potter     & Express Air    & Corporate      & Office Supplies & ⋯ & Washington & Anacortes   & 98221 & 2015-01-07 & 2015-01-08 &    4.5600 &  4 &   13.01 & 88522 & William\\\\\n",
       "\t 20228 & Not Specified & 0.02 & 500.98 & 26.00 &  5 & Ronnie Proctor    & Delivery Truck & Home Office    & Furniture       & ⋯ & California & San Gabriel & 91776 & 2015-06-13 & 2015-06-15 & 4390.3665 & 12 & 6362.85 & 90193 & William\\\\\n",
       "\t 21776 & Critical      & 0.06 &   9.48 &  7.29 & 11 & Marcus Dunlap     & Regular Air    & Home Office    & Furniture       & ⋯ & New Jersey & Roselle     &  7203 & 2015-02-15 & 2015-02-17 &  -53.8096 & 22 &  211.15 & 90192 & Erin   \\\\\n",
       "\t 24844 & Medium        & 0.09 &  78.69 & 19.99 & 14 & Gwendolyn F Tyson & Regular Air    & Small Business & Furniture       & ⋯ & Minnesota  & Prior Lake  & 55372 & 2015-05-12 & 2015-05-14 &  803.4705 & 16 & 1164.45 & 86838 & Chris  \\\\\n",
       "\t 24846 & Medium        & 0.08 &   3.28 &  2.31 & 14 & Gwendolyn F Tyson & Regular Air    & Small Business & Office Supplies & ⋯ & Minnesota  & Prior Lake  & 55372 & 2015-05-12 & 2015-05-13 &  -24.0300 &  7 &   22.23 & 86838 & Chris  \\\\\n",
       "\t 24847 & Medium        & 0.05 &   3.28 &  4.20 & 14 & Gwendolyn F Tyson & Regular Air    & Small Business & Office Supplies & ⋯ & Minnesota  & Prior Lake  & 55372 & 2015-05-12 & 2015-05-13 &  -37.0300 &  4 &   13.99 & 86838 & Chris  \\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 26\n",
       "\n",
       "| Row ID &lt;dbl&gt; | Order Priority &lt;chr&gt; | Discount &lt;dbl&gt; | Unit Price &lt;dbl&gt; | Shipping Cost &lt;dbl&gt; | Customer ID &lt;dbl&gt; | Customer Name &lt;chr&gt; | Ship Mode &lt;chr&gt; | Customer Segment &lt;chr&gt; | Product Category &lt;chr&gt; | ⋯ ⋯ | State or Province &lt;chr&gt; | City &lt;chr&gt; | Postal Code &lt;dbl&gt; | Order Date &lt;dttm&gt; | Ship Date &lt;dttm&gt; | Profit &lt;dbl&gt; | Quantity ordered new &lt;dbl&gt; | Sales &lt;dbl&gt; | Order ID &lt;dbl&gt; | Manager &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 20847 | High          | 0.01 |   2.84 |  0.93 |  3 | Bonnie Potter     | Express Air    | Corporate      | Office Supplies | ⋯ | Washington | Anacortes   | 98221 | 2015-01-07 | 2015-01-08 |    4.5600 |  4 |   13.01 | 88522 | William |\n",
       "| 20228 | Not Specified | 0.02 | 500.98 | 26.00 |  5 | Ronnie Proctor    | Delivery Truck | Home Office    | Furniture       | ⋯ | California | San Gabriel | 91776 | 2015-06-13 | 2015-06-15 | 4390.3665 | 12 | 6362.85 | 90193 | William |\n",
       "| 21776 | Critical      | 0.06 |   9.48 |  7.29 | 11 | Marcus Dunlap     | Regular Air    | Home Office    | Furniture       | ⋯ | New Jersey | Roselle     |  7203 | 2015-02-15 | 2015-02-17 |  -53.8096 | 22 |  211.15 | 90192 | Erin    |\n",
       "| 24844 | Medium        | 0.09 |  78.69 | 19.99 | 14 | Gwendolyn F Tyson | Regular Air    | Small Business | Furniture       | ⋯ | Minnesota  | Prior Lake  | 55372 | 2015-05-12 | 2015-05-14 |  803.4705 | 16 | 1164.45 | 86838 | Chris   |\n",
       "| 24846 | Medium        | 0.08 |   3.28 |  2.31 | 14 | Gwendolyn F Tyson | Regular Air    | Small Business | Office Supplies | ⋯ | Minnesota  | Prior Lake  | 55372 | 2015-05-12 | 2015-05-13 |  -24.0300 |  7 |   22.23 | 86838 | Chris   |\n",
       "| 24847 | Medium        | 0.05 |   3.28 |  4.20 | 14 | Gwendolyn F Tyson | Regular Air    | Small Business | Office Supplies | ⋯ | Minnesota  | Prior Lake  | 55372 | 2015-05-12 | 2015-05-13 |  -37.0300 |  4 |   13.99 | 86838 | Chris   |\n",
       "\n"
      ],
      "text/plain": [
       "  Row ID Order Priority Discount Unit Price Shipping Cost Customer ID\n",
       "1 20847  High           0.01       2.84      0.93          3         \n",
       "2 20228  Not Specified  0.02     500.98     26.00          5         \n",
       "3 21776  Critical       0.06       9.48      7.29         11         \n",
       "4 24844  Medium         0.09      78.69     19.99         14         \n",
       "5 24846  Medium         0.08       3.28      2.31         14         \n",
       "6 24847  Medium         0.05       3.28      4.20         14         \n",
       "  Customer Name     Ship Mode      Customer Segment Product Category ⋯\n",
       "1 Bonnie Potter     Express Air    Corporate        Office Supplies  ⋯\n",
       "2 Ronnie Proctor    Delivery Truck Home Office      Furniture        ⋯\n",
       "3 Marcus Dunlap     Regular Air    Home Office      Furniture        ⋯\n",
       "4 Gwendolyn F Tyson Regular Air    Small Business   Furniture        ⋯\n",
       "5 Gwendolyn F Tyson Regular Air    Small Business   Office Supplies  ⋯\n",
       "6 Gwendolyn F Tyson Regular Air    Small Business   Office Supplies  ⋯\n",
       "  State or Province City        Postal Code Order Date Ship Date  Profit   \n",
       "1 Washington        Anacortes   98221       2015-01-07 2015-01-08    4.5600\n",
       "2 California        San Gabriel 91776       2015-06-13 2015-06-15 4390.3665\n",
       "3 New Jersey        Roselle      7203       2015-02-15 2015-02-17  -53.8096\n",
       "4 Minnesota         Prior Lake  55372       2015-05-12 2015-05-14  803.4705\n",
       "5 Minnesota         Prior Lake  55372       2015-05-12 2015-05-13  -24.0300\n",
       "6 Minnesota         Prior Lake  55372       2015-05-12 2015-05-13  -37.0300\n",
       "  Quantity ordered new Sales   Order ID Manager\n",
       "1  4                     13.01 88522    William\n",
       "2 12                   6362.85 90193    William\n",
       "3 22                    211.15 90192    Erin   \n",
       "4 16                   1164.45 86838    Chris  \n",
       "5  7                     22.23 86838    Chris  \n",
       "6  4                     13.99 86838    Chris  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "1952"
      ],
      "text/latex": [
       "1952"
      ],
      "text/markdown": [
       "1952"
      ],
      "text/plain": [
       "[1] 1952"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "15"
      ],
      "text/latex": [
       "15"
      ],
      "text/markdown": [
       "15"
      ],
      "text/plain": [
       "[1] 15"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 25</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Row ID</th><th scope=col>Order Priority</th><th scope=col>Discount</th><th scope=col>Unit Price</th><th scope=col>Shipping Cost</th><th scope=col>Customer ID</th><th scope=col>Ship Mode</th><th scope=col>Customer Segment</th><th scope=col>Product Category</th><th scope=col>Product Sub-Category</th><th scope=col>⋯</th><th scope=col>State or Province</th><th scope=col>City</th><th scope=col>Postal Code</th><th scope=col>Order Date</th><th scope=col>Ship Date</th><th scope=col>Profit</th><th scope=col>Quantity ordered new</th><th scope=col>Sales</th><th scope=col>Order ID</th><th scope=col>Manager</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>⋯</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>20847</td><td><span style=white-space:pre-wrap>High         </span></td><td>0.01</td><td><span style=white-space:pre-wrap>  2.84</span></td><td> 0.93</td><td> 3</td><td><span style=white-space:pre-wrap>Express Air   </span></td><td><span style=white-space:pre-wrap>Corporate     </span></td><td>Office Supplies</td><td>Pens &amp; Art Supplies</td><td>⋯</td><td>Washington</td><td><span style=white-space:pre-wrap>Anacortes  </span></td><td>98221</td><td>2015-01-07</td><td>2015-01-08</td><td><span style=white-space:pre-wrap>   4.5600</span></td><td> 4</td><td><span style=white-space:pre-wrap>  13.01</span></td><td>88522</td><td>William</td></tr>\n",
       "\t<tr><td>20228</td><td>Not Specified</td><td>0.02</td><td>500.98</td><td>26.00</td><td> 5</td><td>Delivery Truck</td><td><span style=white-space:pre-wrap>Home Office   </span></td><td><span style=white-space:pre-wrap>Furniture      </span></td><td>Chairs &amp; Chairmats </td><td>⋯</td><td>California</td><td>San Gabriel</td><td>91776</td><td>2015-06-13</td><td>2015-06-15</td><td>4390.3665</td><td>12</td><td>6362.85</td><td>90193</td><td>William</td></tr>\n",
       "\t<tr><td>21776</td><td>Critical     </td><td>0.06</td><td>  9.48</td><td> 7.29</td><td>11</td><td>Regular Air   </td><td>Home Office   </td><td>Furniture      </td><td>Office Furnishings </td><td>⋯</td><td>New Jersey</td><td>Roselle    </td><td> 7203</td><td>2015-02-15</td><td>2015-02-17</td><td> -53.8096</td><td>22</td><td> 211.15</td><td>90192</td><td>Erin   </td></tr>\n",
       "\t<tr><td>24844</td><td>Medium       </td><td>0.09</td><td> 78.69</td><td>19.99</td><td>14</td><td>Regular Air   </td><td>Small Business</td><td>Furniture      </td><td>Office Furnishings </td><td>⋯</td><td>Minnesota </td><td>Prior Lake </td><td>55372</td><td>2015-05-12</td><td>2015-05-14</td><td> 803.4705</td><td>16</td><td>1164.45</td><td>86838</td><td>Chris  </td></tr>\n",
       "\t<tr><td>24846</td><td><span style=white-space:pre-wrap>Medium       </span></td><td>0.08</td><td><span style=white-space:pre-wrap>  3.28</span></td><td> 2.31</td><td>14</td><td><span style=white-space:pre-wrap>Regular Air   </span></td><td>Small Business</td><td>Office Supplies</td><td>Pens &amp; Art Supplies</td><td>⋯</td><td>Minnesota </td><td>Prior Lake </td><td>55372</td><td>2015-05-12</td><td>2015-05-13</td><td> -24.0300</td><td> 7</td><td><span style=white-space:pre-wrap>  22.23</span></td><td>86838</td><td><span style=white-space:pre-wrap>Chris  </span></td></tr>\n",
       "\t<tr><td>24847</td><td><span style=white-space:pre-wrap>Medium       </span></td><td>0.05</td><td><span style=white-space:pre-wrap>  3.28</span></td><td> 4.20</td><td>14</td><td><span style=white-space:pre-wrap>Regular Air   </span></td><td>Small Business</td><td>Office Supplies</td><td>Pens &amp; Art Supplies</td><td>⋯</td><td>Minnesota </td><td>Prior Lake </td><td>55372</td><td>2015-05-12</td><td>2015-05-13</td><td> -37.0300</td><td> 4</td><td><span style=white-space:pre-wrap>  13.99</span></td><td>86838</td><td><span style=white-space:pre-wrap>Chris  </span></td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 25\n",
       "\\begin{tabular}{lllllllllllllllllllll}\n",
       " Row ID & Order Priority & Discount & Unit Price & Shipping Cost & Customer ID & Ship Mode & Customer Segment & Product Category & Product Sub-Category & ⋯ & State or Province & City & Postal Code & Order Date & Ship Date & Profit & Quantity ordered new & Sales & Order ID & Manager\\\\\n",
       " <dbl> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <chr> & <chr> & <chr> & ⋯ & <chr> & <chr> & <dbl> & <dttm> & <dttm> & <dbl> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 20847 & High          & 0.01 &   2.84 &  0.93 &  3 & Express Air    & Corporate      & Office Supplies & Pens \\& Art Supplies & ⋯ & Washington & Anacortes   & 98221 & 2015-01-07 & 2015-01-08 &    4.5600 &  4 &   13.01 & 88522 & William\\\\\n",
       "\t 20228 & Not Specified & 0.02 & 500.98 & 26.00 &  5 & Delivery Truck & Home Office    & Furniture       & Chairs \\& Chairmats  & ⋯ & California & San Gabriel & 91776 & 2015-06-13 & 2015-06-15 & 4390.3665 & 12 & 6362.85 & 90193 & William\\\\\n",
       "\t 21776 & Critical      & 0.06 &   9.48 &  7.29 & 11 & Regular Air    & Home Office    & Furniture       & Office Furnishings  & ⋯ & New Jersey & Roselle     &  7203 & 2015-02-15 & 2015-02-17 &  -53.8096 & 22 &  211.15 & 90192 & Erin   \\\\\n",
       "\t 24844 & Medium        & 0.09 &  78.69 & 19.99 & 14 & Regular Air    & Small Business & Furniture       & Office Furnishings  & ⋯ & Minnesota  & Prior Lake  & 55372 & 2015-05-12 & 2015-05-14 &  803.4705 & 16 & 1164.45 & 86838 & Chris  \\\\\n",
       "\t 24846 & Medium        & 0.08 &   3.28 &  2.31 & 14 & Regular Air    & Small Business & Office Supplies & Pens \\& Art Supplies & ⋯ & Minnesota  & Prior Lake  & 55372 & 2015-05-12 & 2015-05-13 &  -24.0300 &  7 &   22.23 & 86838 & Chris  \\\\\n",
       "\t 24847 & Medium        & 0.05 &   3.28 &  4.20 & 14 & Regular Air    & Small Business & Office Supplies & Pens \\& Art Supplies & ⋯ & Minnesota  & Prior Lake  & 55372 & 2015-05-12 & 2015-05-13 &  -37.0300 &  4 &   13.99 & 86838 & Chris  \\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 25\n",
       "\n",
       "| Row ID &lt;dbl&gt; | Order Priority &lt;chr&gt; | Discount &lt;dbl&gt; | Unit Price &lt;dbl&gt; | Shipping Cost &lt;dbl&gt; | Customer ID &lt;dbl&gt; | Ship Mode &lt;chr&gt; | Customer Segment &lt;chr&gt; | Product Category &lt;chr&gt; | Product Sub-Category &lt;chr&gt; | ⋯ ⋯ | State or Province &lt;chr&gt; | City &lt;chr&gt; | Postal Code &lt;dbl&gt; | Order Date &lt;dttm&gt; | Ship Date &lt;dttm&gt; | Profit &lt;dbl&gt; | Quantity ordered new &lt;dbl&gt; | Sales &lt;dbl&gt; | Order ID &lt;dbl&gt; | Manager &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 20847 | High          | 0.01 |   2.84 |  0.93 |  3 | Express Air    | Corporate      | Office Supplies | Pens &amp; Art Supplies | ⋯ | Washington | Anacortes   | 98221 | 2015-01-07 | 2015-01-08 |    4.5600 |  4 |   13.01 | 88522 | William |\n",
       "| 20228 | Not Specified | 0.02 | 500.98 | 26.00 |  5 | Delivery Truck | Home Office    | Furniture       | Chairs &amp; Chairmats  | ⋯ | California | San Gabriel | 91776 | 2015-06-13 | 2015-06-15 | 4390.3665 | 12 | 6362.85 | 90193 | William |\n",
       "| 21776 | Critical      | 0.06 |   9.48 |  7.29 | 11 | Regular Air    | Home Office    | Furniture       | Office Furnishings  | ⋯ | New Jersey | Roselle     |  7203 | 2015-02-15 | 2015-02-17 |  -53.8096 | 22 |  211.15 | 90192 | Erin    |\n",
       "| 24844 | Medium        | 0.09 |  78.69 | 19.99 | 14 | Regular Air    | Small Business | Furniture       | Office Furnishings  | ⋯ | Minnesota  | Prior Lake  | 55372 | 2015-05-12 | 2015-05-14 |  803.4705 | 16 | 1164.45 | 86838 | Chris   |\n",
       "| 24846 | Medium        | 0.08 |   3.28 |  2.31 | 14 | Regular Air    | Small Business | Office Supplies | Pens &amp; Art Supplies | ⋯ | Minnesota  | Prior Lake  | 55372 | 2015-05-12 | 2015-05-13 |  -24.0300 |  7 |   22.23 | 86838 | Chris   |\n",
       "| 24847 | Medium        | 0.05 |   3.28 |  4.20 | 14 | Regular Air    | Small Business | Office Supplies | Pens &amp; Art Supplies | ⋯ | Minnesota  | Prior Lake  | 55372 | 2015-05-12 | 2015-05-13 |  -37.0300 |  4 |   13.99 | 86838 | Chris   |\n",
       "\n"
      ],
      "text/plain": [
       "  Row ID Order Priority Discount Unit Price Shipping Cost Customer ID\n",
       "1 20847  High           0.01       2.84      0.93          3         \n",
       "2 20228  Not Specified  0.02     500.98     26.00          5         \n",
       "3 21776  Critical       0.06       9.48      7.29         11         \n",
       "4 24844  Medium         0.09      78.69     19.99         14         \n",
       "5 24846  Medium         0.08       3.28      2.31         14         \n",
       "6 24847  Medium         0.05       3.28      4.20         14         \n",
       "  Ship Mode      Customer Segment Product Category Product Sub-Category ⋯\n",
       "1 Express Air    Corporate        Office Supplies  Pens & Art Supplies  ⋯\n",
       "2 Delivery Truck Home Office      Furniture        Chairs & Chairmats   ⋯\n",
       "3 Regular Air    Home Office      Furniture        Office Furnishings   ⋯\n",
       "4 Regular Air    Small Business   Furniture        Office Furnishings   ⋯\n",
       "5 Regular Air    Small Business   Office Supplies  Pens & Art Supplies  ⋯\n",
       "6 Regular Air    Small Business   Office Supplies  Pens & Art Supplies  ⋯\n",
       "  State or Province City        Postal Code Order Date Ship Date  Profit   \n",
       "1 Washington        Anacortes   98221       2015-01-07 2015-01-08    4.5600\n",
       "2 California        San Gabriel 91776       2015-06-13 2015-06-15 4390.3665\n",
       "3 New Jersey        Roselle      7203       2015-02-15 2015-02-17  -53.8096\n",
       "4 Minnesota         Prior Lake  55372       2015-05-12 2015-05-14  803.4705\n",
       "5 Minnesota         Prior Lake  55372       2015-05-12 2015-05-13  -24.0300\n",
       "6 Minnesota         Prior Lake  55372       2015-05-12 2015-05-13  -37.0300\n",
       "  Quantity ordered new Sales   Order ID Manager\n",
       "1  4                     13.01 88522    William\n",
       "2 12                   6362.85 90193    William\n",
       "3 22                    211.15 90192    Erin   \n",
       "4 16                   1164.45 86838    Chris  \n",
       "5  7                     22.23 86838    Chris  \n",
       "6  4                     13.99 86838    Chris  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "orders_mangers <- inner_join(orders,users, by=\"Region\")#merge 2 data sets by adding the manager incharge of every region\n",
    "orders_returned <- inner_join(orders_mangers,returns, by =\"Order ID\")#identify ordered goods returned\n",
    "head(orders_returned)\n",
    "head(orders_mangers)\n",
    "n_distinct(orders_mangers)\n",
    "n_distinct(orders_returned)\n",
    "orders_mangers <- orders_mangers %>% select(-c(\"Customer Name\"))\n",
    "head(orders_mangers)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6f4735d2",
   "metadata": {
    "papermill": {
     "duration": 0.010166,
     "end_time": "2022-11-13T22:09:06.608002",
     "exception": false,
     "start_time": "2022-11-13T22:09:06.597836",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### STEP FOUR: CLEAN DATA AND ADD DATA TO PREPARE FOR ANALYSIS"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "01a0ad3b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:06.637166Z",
     "iopub.status.busy": "2022-11-13T22:09:06.633690Z",
     "iopub.status.idle": "2022-11-13T22:09:06.749809Z",
     "shell.execute_reply": "2022-11-13T22:09:06.745999Z"
    },
    "papermill": {
     "duration": 0.13601,
     "end_time": "2022-11-13T22:09:06.753791",
     "exception": false,
     "start_time": "2022-11-13T22:09:06.617781",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'Row ID'</li><li>'Order Priority'</li><li>'Discount'</li><li>'Unit Price'</li><li>'Shipping Cost'</li><li>'Customer ID'</li><li>'Ship Mode'</li><li>'Customer Segment'</li><li>'Product Category'</li><li>'Product Sub-Category'</li><li>'Product Container'</li><li>'Product Name'</li><li>'Product Base Margin'</li><li>'Country'</li><li>'Region'</li><li>'State or Province'</li><li>'City'</li><li>'Postal Code'</li><li>'Order Date'</li><li>'Ship Date'</li><li>'Profit'</li><li>'Quantity ordered new'</li><li>'Sales'</li><li>'Order ID'</li><li>'Manager'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'Row ID'\n",
       "\\item 'Order Priority'\n",
       "\\item 'Discount'\n",
       "\\item 'Unit Price'\n",
       "\\item 'Shipping Cost'\n",
       "\\item 'Customer ID'\n",
       "\\item 'Ship Mode'\n",
       "\\item 'Customer Segment'\n",
       "\\item 'Product Category'\n",
       "\\item 'Product Sub-Category'\n",
       "\\item 'Product Container'\n",
       "\\item 'Product Name'\n",
       "\\item 'Product Base Margin'\n",
       "\\item 'Country'\n",
       "\\item 'Region'\n",
       "\\item 'State or Province'\n",
       "\\item 'City'\n",
       "\\item 'Postal Code'\n",
       "\\item 'Order Date'\n",
       "\\item 'Ship Date'\n",
       "\\item 'Profit'\n",
       "\\item 'Quantity ordered new'\n",
       "\\item 'Sales'\n",
       "\\item 'Order ID'\n",
       "\\item 'Manager'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'Row ID'\n",
       "2. 'Order Priority'\n",
       "3. 'Discount'\n",
       "4. 'Unit Price'\n",
       "5. 'Shipping Cost'\n",
       "6. 'Customer ID'\n",
       "7. 'Ship Mode'\n",
       "8. 'Customer Segment'\n",
       "9. 'Product Category'\n",
       "10. 'Product Sub-Category'\n",
       "11. 'Product Container'\n",
       "12. 'Product Name'\n",
       "13. 'Product Base Margin'\n",
       "14. 'Country'\n",
       "15. 'Region'\n",
       "16. 'State or Province'\n",
       "17. 'City'\n",
       "18. 'Postal Code'\n",
       "19. 'Order Date'\n",
       "20. 'Ship Date'\n",
       "21. 'Profit'\n",
       "22. 'Quantity ordered new'\n",
       "23. 'Sales'\n",
       "24. 'Order ID'\n",
       "25. 'Manager'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"Row ID\"               \"Order Priority\"       \"Discount\"            \n",
       " [4] \"Unit Price\"           \"Shipping Cost\"        \"Customer ID\"         \n",
       " [7] \"Ship Mode\"            \"Customer Segment\"     \"Product Category\"    \n",
       "[10] \"Product Sub-Category\" \"Product Container\"    \"Product Name\"        \n",
       "[13] \"Product Base Margin\"  \"Country\"              \"Region\"              \n",
       "[16] \"State or Province\"    \"City\"                 \"Postal Code\"         \n",
       "[19] \"Order Date\"           \"Ship Date\"            \"Profit\"              \n",
       "[22] \"Quantity ordered new\" \"Sales\"                \"Order ID\"            \n",
       "[25] \"Manager\"             "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "1952"
      ],
      "text/latex": [
       "1952"
      ],
      "text/markdown": [
       "1952"
      ],
      "text/plain": [
       "[1] 1952"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>1952</li><li>25</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 1952\n",
       "\\item 25\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 1952\n",
       "2. 25\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 1952   25"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 25</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Row ID</th><th scope=col>Order Priority</th><th scope=col>Discount</th><th scope=col>Unit Price</th><th scope=col>Shipping Cost</th><th scope=col>Customer ID</th><th scope=col>Ship Mode</th><th scope=col>Customer Segment</th><th scope=col>Product Category</th><th scope=col>Product Sub-Category</th><th scope=col>⋯</th><th scope=col>State or Province</th><th scope=col>City</th><th scope=col>Postal Code</th><th scope=col>Order Date</th><th scope=col>Ship Date</th><th scope=col>Profit</th><th scope=col>Quantity ordered new</th><th scope=col>Sales</th><th scope=col>Order ID</th><th scope=col>Manager</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>⋯</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>20847</td><td><span style=white-space:pre-wrap>High         </span></td><td>0.01</td><td><span style=white-space:pre-wrap>  2.84</span></td><td> 0.93</td><td> 3</td><td><span style=white-space:pre-wrap>Express Air   </span></td><td><span style=white-space:pre-wrap>Corporate     </span></td><td>Office Supplies</td><td>Pens &amp; Art Supplies</td><td>⋯</td><td>Washington</td><td><span style=white-space:pre-wrap>Anacortes  </span></td><td>98221</td><td>2015-01-07</td><td>2015-01-08</td><td><span style=white-space:pre-wrap>   4.5600</span></td><td> 4</td><td><span style=white-space:pre-wrap>  13.01</span></td><td>88522</td><td>William</td></tr>\n",
       "\t<tr><td>20228</td><td>Not Specified</td><td>0.02</td><td>500.98</td><td>26.00</td><td> 5</td><td>Delivery Truck</td><td><span style=white-space:pre-wrap>Home Office   </span></td><td><span style=white-space:pre-wrap>Furniture      </span></td><td>Chairs &amp; Chairmats </td><td>⋯</td><td>California</td><td>San Gabriel</td><td>91776</td><td>2015-06-13</td><td>2015-06-15</td><td>4390.3665</td><td>12</td><td>6362.85</td><td>90193</td><td>William</td></tr>\n",
       "\t<tr><td>21776</td><td>Critical     </td><td>0.06</td><td>  9.48</td><td> 7.29</td><td>11</td><td>Regular Air   </td><td>Home Office   </td><td>Furniture      </td><td>Office Furnishings </td><td>⋯</td><td>New Jersey</td><td>Roselle    </td><td> 7203</td><td>2015-02-15</td><td>2015-02-17</td><td> -53.8096</td><td>22</td><td> 211.15</td><td>90192</td><td>Erin   </td></tr>\n",
       "\t<tr><td>24844</td><td>Medium       </td><td>0.09</td><td> 78.69</td><td>19.99</td><td>14</td><td>Regular Air   </td><td>Small Business</td><td>Furniture      </td><td>Office Furnishings </td><td>⋯</td><td>Minnesota </td><td>Prior Lake </td><td>55372</td><td>2015-05-12</td><td>2015-05-14</td><td> 803.4705</td><td>16</td><td>1164.45</td><td>86838</td><td>Chris  </td></tr>\n",
       "\t<tr><td>24846</td><td><span style=white-space:pre-wrap>Medium       </span></td><td>0.08</td><td><span style=white-space:pre-wrap>  3.28</span></td><td> 2.31</td><td>14</td><td><span style=white-space:pre-wrap>Regular Air   </span></td><td>Small Business</td><td>Office Supplies</td><td>Pens &amp; Art Supplies</td><td>⋯</td><td>Minnesota </td><td>Prior Lake </td><td>55372</td><td>2015-05-12</td><td>2015-05-13</td><td> -24.0300</td><td> 7</td><td><span style=white-space:pre-wrap>  22.23</span></td><td>86838</td><td><span style=white-space:pre-wrap>Chris  </span></td></tr>\n",
       "\t<tr><td>24847</td><td><span style=white-space:pre-wrap>Medium       </span></td><td>0.05</td><td><span style=white-space:pre-wrap>  3.28</span></td><td> 4.20</td><td>14</td><td><span style=white-space:pre-wrap>Regular Air   </span></td><td>Small Business</td><td>Office Supplies</td><td>Pens &amp; Art Supplies</td><td>⋯</td><td>Minnesota </td><td>Prior Lake </td><td>55372</td><td>2015-05-12</td><td>2015-05-13</td><td> -37.0300</td><td> 4</td><td><span style=white-space:pre-wrap>  13.99</span></td><td>86838</td><td><span style=white-space:pre-wrap>Chris  </span></td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 25\n",
       "\\begin{tabular}{lllllllllllllllllllll}\n",
       " Row ID & Order Priority & Discount & Unit Price & Shipping Cost & Customer ID & Ship Mode & Customer Segment & Product Category & Product Sub-Category & ⋯ & State or Province & City & Postal Code & Order Date & Ship Date & Profit & Quantity ordered new & Sales & Order ID & Manager\\\\\n",
       " <dbl> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <chr> & <chr> & <chr> & ⋯ & <chr> & <chr> & <dbl> & <dttm> & <dttm> & <dbl> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 20847 & High          & 0.01 &   2.84 &  0.93 &  3 & Express Air    & Corporate      & Office Supplies & Pens \\& Art Supplies & ⋯ & Washington & Anacortes   & 98221 & 2015-01-07 & 2015-01-08 &    4.5600 &  4 &   13.01 & 88522 & William\\\\\n",
       "\t 20228 & Not Specified & 0.02 & 500.98 & 26.00 &  5 & Delivery Truck & Home Office    & Furniture       & Chairs \\& Chairmats  & ⋯ & California & San Gabriel & 91776 & 2015-06-13 & 2015-06-15 & 4390.3665 & 12 & 6362.85 & 90193 & William\\\\\n",
       "\t 21776 & Critical      & 0.06 &   9.48 &  7.29 & 11 & Regular Air    & Home Office    & Furniture       & Office Furnishings  & ⋯ & New Jersey & Roselle     &  7203 & 2015-02-15 & 2015-02-17 &  -53.8096 & 22 &  211.15 & 90192 & Erin   \\\\\n",
       "\t 24844 & Medium        & 0.09 &  78.69 & 19.99 & 14 & Regular Air    & Small Business & Furniture       & Office Furnishings  & ⋯ & Minnesota  & Prior Lake  & 55372 & 2015-05-12 & 2015-05-14 &  803.4705 & 16 & 1164.45 & 86838 & Chris  \\\\\n",
       "\t 24846 & Medium        & 0.08 &   3.28 &  2.31 & 14 & Regular Air    & Small Business & Office Supplies & Pens \\& Art Supplies & ⋯ & Minnesota  & Prior Lake  & 55372 & 2015-05-12 & 2015-05-13 &  -24.0300 &  7 &   22.23 & 86838 & Chris  \\\\\n",
       "\t 24847 & Medium        & 0.05 &   3.28 &  4.20 & 14 & Regular Air    & Small Business & Office Supplies & Pens \\& Art Supplies & ⋯ & Minnesota  & Prior Lake  & 55372 & 2015-05-12 & 2015-05-13 &  -37.0300 &  4 &   13.99 & 86838 & Chris  \\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 25\n",
       "\n",
       "| Row ID &lt;dbl&gt; | Order Priority &lt;chr&gt; | Discount &lt;dbl&gt; | Unit Price &lt;dbl&gt; | Shipping Cost &lt;dbl&gt; | Customer ID &lt;dbl&gt; | Ship Mode &lt;chr&gt; | Customer Segment &lt;chr&gt; | Product Category &lt;chr&gt; | Product Sub-Category &lt;chr&gt; | ⋯ ⋯ | State or Province &lt;chr&gt; | City &lt;chr&gt; | Postal Code &lt;dbl&gt; | Order Date &lt;dttm&gt; | Ship Date &lt;dttm&gt; | Profit &lt;dbl&gt; | Quantity ordered new &lt;dbl&gt; | Sales &lt;dbl&gt; | Order ID &lt;dbl&gt; | Manager &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 20847 | High          | 0.01 |   2.84 |  0.93 |  3 | Express Air    | Corporate      | Office Supplies | Pens &amp; Art Supplies | ⋯ | Washington | Anacortes   | 98221 | 2015-01-07 | 2015-01-08 |    4.5600 |  4 |   13.01 | 88522 | William |\n",
       "| 20228 | Not Specified | 0.02 | 500.98 | 26.00 |  5 | Delivery Truck | Home Office    | Furniture       | Chairs &amp; Chairmats  | ⋯ | California | San Gabriel | 91776 | 2015-06-13 | 2015-06-15 | 4390.3665 | 12 | 6362.85 | 90193 | William |\n",
       "| 21776 | Critical      | 0.06 |   9.48 |  7.29 | 11 | Regular Air    | Home Office    | Furniture       | Office Furnishings  | ⋯ | New Jersey | Roselle     |  7203 | 2015-02-15 | 2015-02-17 |  -53.8096 | 22 |  211.15 | 90192 | Erin    |\n",
       "| 24844 | Medium        | 0.09 |  78.69 | 19.99 | 14 | Regular Air    | Small Business | Furniture       | Office Furnishings  | ⋯ | Minnesota  | Prior Lake  | 55372 | 2015-05-12 | 2015-05-14 |  803.4705 | 16 | 1164.45 | 86838 | Chris   |\n",
       "| 24846 | Medium        | 0.08 |   3.28 |  2.31 | 14 | Regular Air    | Small Business | Office Supplies | Pens &amp; Art Supplies | ⋯ | Minnesota  | Prior Lake  | 55372 | 2015-05-12 | 2015-05-13 |  -24.0300 |  7 |   22.23 | 86838 | Chris   |\n",
       "| 24847 | Medium        | 0.05 |   3.28 |  4.20 | 14 | Regular Air    | Small Business | Office Supplies | Pens &amp; Art Supplies | ⋯ | Minnesota  | Prior Lake  | 55372 | 2015-05-12 | 2015-05-13 |  -37.0300 |  4 |   13.99 | 86838 | Chris   |\n",
       "\n"
      ],
      "text/plain": [
       "  Row ID Order Priority Discount Unit Price Shipping Cost Customer ID\n",
       "1 20847  High           0.01       2.84      0.93          3         \n",
       "2 20228  Not Specified  0.02     500.98     26.00          5         \n",
       "3 21776  Critical       0.06       9.48      7.29         11         \n",
       "4 24844  Medium         0.09      78.69     19.99         14         \n",
       "5 24846  Medium         0.08       3.28      2.31         14         \n",
       "6 24847  Medium         0.05       3.28      4.20         14         \n",
       "  Ship Mode      Customer Segment Product Category Product Sub-Category ⋯\n",
       "1 Express Air    Corporate        Office Supplies  Pens & Art Supplies  ⋯\n",
       "2 Delivery Truck Home Office      Furniture        Chairs & Chairmats   ⋯\n",
       "3 Regular Air    Home Office      Furniture        Office Furnishings   ⋯\n",
       "4 Regular Air    Small Business   Furniture        Office Furnishings   ⋯\n",
       "5 Regular Air    Small Business   Office Supplies  Pens & Art Supplies  ⋯\n",
       "6 Regular Air    Small Business   Office Supplies  Pens & Art Supplies  ⋯\n",
       "  State or Province City        Postal Code Order Date Ship Date  Profit   \n",
       "1 Washington        Anacortes   98221       2015-01-07 2015-01-08    4.5600\n",
       "2 California        San Gabriel 91776       2015-06-13 2015-06-15 4390.3665\n",
       "3 New Jersey        Roselle      7203       2015-02-15 2015-02-17  -53.8096\n",
       "4 Minnesota         Prior Lake  55372       2015-05-12 2015-05-14  803.4705\n",
       "5 Minnesota         Prior Lake  55372       2015-05-12 2015-05-13  -24.0300\n",
       "6 Minnesota         Prior Lake  55372       2015-05-12 2015-05-13  -37.0300\n",
       "  Quantity ordered new Sales   Order ID Manager\n",
       "1  4                     13.01 88522    William\n",
       "2 12                   6362.85 90193    William\n",
       "3 22                    211.15 90192    Erin   \n",
       "4 16                   1164.45 86838    Chris  \n",
       "5  7                     22.23 86838    Chris  \n",
       "6  4                     13.99 86838    Chris  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [1,952 × 25] (S3: tbl_df/tbl/data.frame)\n",
      " $ Row ID              : num [1:1952] 20847 20228 21776 24844 24846 ...\n",
      " $ Order Priority      : chr [1:1952] \"High\" \"Not Specified\" \"Critical\" \"Medium\" ...\n",
      " $ Discount            : num [1:1952] 0.01 0.02 0.06 0.09 0.08 0.05 0.05 0 0.01 0.04 ...\n",
      " $ Unit Price          : num [1:1952] 2.84 500.98 9.48 78.69 3.28 ...\n",
      " $ Shipping Cost       : num [1:1952] 0.93 26 7.29 19.99 2.31 ...\n",
      " $ Customer ID         : num [1:1952] 3 5 11 14 14 14 14 15 15 16 ...\n",
      " $ Ship Mode           : chr [1:1952] \"Express Air\" \"Delivery Truck\" \"Regular Air\" \"Regular Air\" ...\n",
      " $ Customer Segment    : chr [1:1952] \"Corporate\" \"Home Office\" \"Home Office\" \"Small Business\" ...\n",
      " $ Product Category    : chr [1:1952] \"Office Supplies\" \"Furniture\" \"Furniture\" \"Furniture\" ...\n",
      " $ Product Sub-Category: chr [1:1952] \"Pens & Art Supplies\" \"Chairs & Chairmats\" \"Office Furnishings\" \"Office Furnishings\" ...\n",
      " $ Product Container   : chr [1:1952] \"Wrap Bag\" \"Jumbo Drum\" \"Small Pack\" \"Small Box\" ...\n",
      " $ Product Name        : chr [1:1952] \"SANFORD Liquid Accent™ Tank-Style Highlighters\" \"Global Troy™ Executive Leather Low-Back Tilter\" \"DAX Two-Tone Rosewood/Black Document Frame, Desktop, 5 x 7\" \"Howard Miller 12-3/4 Diameter Accuwave DS ™ Wall Clock\" ...\n",
      " $ Product Base Margin : num [1:1952] 0.54 0.6 0.45 0.43 0.56 0.56 0.36 0.38 0.4 0.39 ...\n",
      " $ Country             : chr [1:1952] \"United States\" \"United States\" \"United States\" \"United States\" ...\n",
      " $ Region              : chr [1:1952] \"West\" \"West\" \"East\" \"Central\" ...\n",
      " $ State or Province   : chr [1:1952] \"Washington\" \"California\" \"New Jersey\" \"Minnesota\" ...\n",
      " $ City                : chr [1:1952] \"Anacortes\" \"San Gabriel\" \"Roselle\" \"Prior Lake\" ...\n",
      " $ Postal Code         : num [1:1952] 98221 91776 7203 55372 55372 ...\n",
      " $ Order Date          : POSIXct[1:1952], format: \"2015-01-07\" \"2015-06-13\" ...\n",
      " $ Ship Date           : POSIXct[1:1952], format: \"2015-01-08\" \"2015-06-15\" ...\n",
      " $ Profit              : num [1:1952] 4.56 4390.37 -53.81 803.47 -24.03 ...\n",
      " $ Quantity ordered new: num [1:1952] 4 12 22 16 7 4 4 7 10 6 ...\n",
      " $ Sales               : num [1:1952] 13 6362.9 211.2 1164.5 22.2 ...\n",
      " $ Order ID            : num [1:1952] 88522 90193 90192 86838 86838 ...\n",
      " $ Manager             : chr [1:1952] \"William\" \"William\" \"Erin\" \"Chris\" ...\n"
     ]
    }
   ],
   "source": [
    "\n",
    "#inspect the new created table orders_mangers\n",
    "colnames(orders_mangers)\n",
    "nrow(orders_mangers)\n",
    "dim(orders_mangers) \n",
    "head(orders_mangers)\n",
    "str(orders_mangers)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "78d4e271",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:06.784289Z",
     "iopub.status.busy": "2022-11-13T22:09:06.782327Z",
     "iopub.status.idle": "2022-11-13T22:09:06.824436Z",
     "shell.execute_reply": "2022-11-13T22:09:06.822831Z"
    },
    "papermill": {
     "duration": 0.058484,
     "end_time": "2022-11-13T22:09:06.826507",
     "exception": false,
     "start_time": "2022-11-13T22:09:06.768023",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 30</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Row ID</th><th scope=col>Order Priority</th><th scope=col>Discount</th><th scope=col>Unit Price</th><th scope=col>Shipping Cost</th><th scope=col>Customer ID</th><th scope=col>Ship Mode</th><th scope=col>Customer Segment</th><th scope=col>Product Category</th><th scope=col>Product Sub-Category</th><th scope=col>⋯</th><th scope=col>Profit</th><th scope=col>Quantity ordered new</th><th scope=col>Sales</th><th scope=col>Order ID</th><th scope=col>Manager</th><th scope=col>date</th><th scope=col>day</th><th scope=col>day_of_week</th><th scope=col>Month</th><th scope=col>year</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>⋯</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;date&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>20847</td><td><span style=white-space:pre-wrap>High         </span></td><td>0.01</td><td><span style=white-space:pre-wrap>  2.84</span></td><td> 0.93</td><td> 3</td><td><span style=white-space:pre-wrap>Express Air   </span></td><td><span style=white-space:pre-wrap>Corporate     </span></td><td>Office Supplies</td><td>Pens &amp; Art Supplies</td><td>⋯</td><td><span style=white-space:pre-wrap>   4.5600</span></td><td> 4</td><td><span style=white-space:pre-wrap>  13.01</span></td><td>88522</td><td>William</td><td>2015-01-07</td><td>07</td><td>Wednesday</td><td>Jan</td><td>2015</td></tr>\n",
       "\t<tr><td>20228</td><td>Not Specified</td><td>0.02</td><td>500.98</td><td>26.00</td><td> 5</td><td>Delivery Truck</td><td><span style=white-space:pre-wrap>Home Office   </span></td><td><span style=white-space:pre-wrap>Furniture      </span></td><td>Chairs &amp; Chairmats </td><td>⋯</td><td>4390.3665</td><td>12</td><td>6362.85</td><td>90193</td><td>William</td><td>2015-06-13</td><td>13</td><td>Saturday </td><td>Jun</td><td>2015</td></tr>\n",
       "\t<tr><td>21776</td><td>Critical     </td><td>0.06</td><td>  9.48</td><td> 7.29</td><td>11</td><td>Regular Air   </td><td>Home Office   </td><td>Furniture      </td><td>Office Furnishings </td><td>⋯</td><td> -53.8096</td><td>22</td><td> 211.15</td><td>90192</td><td>Erin   </td><td>2015-02-15</td><td>15</td><td>Sunday   </td><td>Feb</td><td>2015</td></tr>\n",
       "\t<tr><td>24844</td><td>Medium       </td><td>0.09</td><td> 78.69</td><td>19.99</td><td>14</td><td>Regular Air   </td><td>Small Business</td><td>Furniture      </td><td>Office Furnishings </td><td>⋯</td><td> 803.4705</td><td>16</td><td>1164.45</td><td>86838</td><td>Chris  </td><td>2015-05-12</td><td>12</td><td>Tuesday  </td><td>May</td><td>2015</td></tr>\n",
       "\t<tr><td>24846</td><td><span style=white-space:pre-wrap>Medium       </span></td><td>0.08</td><td><span style=white-space:pre-wrap>  3.28</span></td><td> 2.31</td><td>14</td><td><span style=white-space:pre-wrap>Regular Air   </span></td><td>Small Business</td><td>Office Supplies</td><td>Pens &amp; Art Supplies</td><td>⋯</td><td> -24.0300</td><td> 7</td><td><span style=white-space:pre-wrap>  22.23</span></td><td>86838</td><td><span style=white-space:pre-wrap>Chris  </span></td><td>2015-05-12</td><td>12</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>May</td><td>2015</td></tr>\n",
       "\t<tr><td>24847</td><td><span style=white-space:pre-wrap>Medium       </span></td><td>0.05</td><td><span style=white-space:pre-wrap>  3.28</span></td><td> 4.20</td><td>14</td><td><span style=white-space:pre-wrap>Regular Air   </span></td><td>Small Business</td><td>Office Supplies</td><td>Pens &amp; Art Supplies</td><td>⋯</td><td> -37.0300</td><td> 4</td><td><span style=white-space:pre-wrap>  13.99</span></td><td>86838</td><td><span style=white-space:pre-wrap>Chris  </span></td><td>2015-05-12</td><td>12</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>May</td><td>2015</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 30\n",
       "\\begin{tabular}{lllllllllllllllllllll}\n",
       " Row ID & Order Priority & Discount & Unit Price & Shipping Cost & Customer ID & Ship Mode & Customer Segment & Product Category & Product Sub-Category & ⋯ & Profit & Quantity ordered new & Sales & Order ID & Manager & date & day & day\\_of\\_week & Month & year\\\\\n",
       " <dbl> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <chr> & <chr> & <chr> & ⋯ & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <date> & <chr> & <chr> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t 20847 & High          & 0.01 &   2.84 &  0.93 &  3 & Express Air    & Corporate      & Office Supplies & Pens \\& Art Supplies & ⋯ &    4.5600 &  4 &   13.01 & 88522 & William & 2015-01-07 & 07 & Wednesday & Jan & 2015\\\\\n",
       "\t 20228 & Not Specified & 0.02 & 500.98 & 26.00 &  5 & Delivery Truck & Home Office    & Furniture       & Chairs \\& Chairmats  & ⋯ & 4390.3665 & 12 & 6362.85 & 90193 & William & 2015-06-13 & 13 & Saturday  & Jun & 2015\\\\\n",
       "\t 21776 & Critical      & 0.06 &   9.48 &  7.29 & 11 & Regular Air    & Home Office    & Furniture       & Office Furnishings  & ⋯ &  -53.8096 & 22 &  211.15 & 90192 & Erin    & 2015-02-15 & 15 & Sunday    & Feb & 2015\\\\\n",
       "\t 24844 & Medium        & 0.09 &  78.69 & 19.99 & 14 & Regular Air    & Small Business & Furniture       & Office Furnishings  & ⋯ &  803.4705 & 16 & 1164.45 & 86838 & Chris   & 2015-05-12 & 12 & Tuesday   & May & 2015\\\\\n",
       "\t 24846 & Medium        & 0.08 &   3.28 &  2.31 & 14 & Regular Air    & Small Business & Office Supplies & Pens \\& Art Supplies & ⋯ &  -24.0300 &  7 &   22.23 & 86838 & Chris   & 2015-05-12 & 12 & Tuesday   & May & 2015\\\\\n",
       "\t 24847 & Medium        & 0.05 &   3.28 &  4.20 & 14 & Regular Air    & Small Business & Office Supplies & Pens \\& Art Supplies & ⋯ &  -37.0300 &  4 &   13.99 & 86838 & Chris   & 2015-05-12 & 12 & Tuesday   & May & 2015\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 30\n",
       "\n",
       "| Row ID &lt;dbl&gt; | Order Priority &lt;chr&gt; | Discount &lt;dbl&gt; | Unit Price &lt;dbl&gt; | Shipping Cost &lt;dbl&gt; | Customer ID &lt;dbl&gt; | Ship Mode &lt;chr&gt; | Customer Segment &lt;chr&gt; | Product Category &lt;chr&gt; | Product Sub-Category &lt;chr&gt; | ⋯ ⋯ | Profit &lt;dbl&gt; | Quantity ordered new &lt;dbl&gt; | Sales &lt;dbl&gt; | Order ID &lt;dbl&gt; | Manager &lt;chr&gt; | date &lt;date&gt; | day &lt;chr&gt; | day_of_week &lt;chr&gt; | Month &lt;chr&gt; | year &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 20847 | High          | 0.01 |   2.84 |  0.93 |  3 | Express Air    | Corporate      | Office Supplies | Pens &amp; Art Supplies | ⋯ |    4.5600 |  4 |   13.01 | 88522 | William | 2015-01-07 | 07 | Wednesday | Jan | 2015 |\n",
       "| 20228 | Not Specified | 0.02 | 500.98 | 26.00 |  5 | Delivery Truck | Home Office    | Furniture       | Chairs &amp; Chairmats  | ⋯ | 4390.3665 | 12 | 6362.85 | 90193 | William | 2015-06-13 | 13 | Saturday  | Jun | 2015 |\n",
       "| 21776 | Critical      | 0.06 |   9.48 |  7.29 | 11 | Regular Air    | Home Office    | Furniture       | Office Furnishings  | ⋯ |  -53.8096 | 22 |  211.15 | 90192 | Erin    | 2015-02-15 | 15 | Sunday    | Feb | 2015 |\n",
       "| 24844 | Medium        | 0.09 |  78.69 | 19.99 | 14 | Regular Air    | Small Business | Furniture       | Office Furnishings  | ⋯ |  803.4705 | 16 | 1164.45 | 86838 | Chris   | 2015-05-12 | 12 | Tuesday   | May | 2015 |\n",
       "| 24846 | Medium        | 0.08 |   3.28 |  2.31 | 14 | Regular Air    | Small Business | Office Supplies | Pens &amp; Art Supplies | ⋯ |  -24.0300 |  7 |   22.23 | 86838 | Chris   | 2015-05-12 | 12 | Tuesday   | May | 2015 |\n",
       "| 24847 | Medium        | 0.05 |   3.28 |  4.20 | 14 | Regular Air    | Small Business | Office Supplies | Pens &amp; Art Supplies | ⋯ |  -37.0300 |  4 |   13.99 | 86838 | Chris   | 2015-05-12 | 12 | Tuesday   | May | 2015 |\n",
       "\n"
      ],
      "text/plain": [
       "  Row ID Order Priority Discount Unit Price Shipping Cost Customer ID\n",
       "1 20847  High           0.01       2.84      0.93          3         \n",
       "2 20228  Not Specified  0.02     500.98     26.00          5         \n",
       "3 21776  Critical       0.06       9.48      7.29         11         \n",
       "4 24844  Medium         0.09      78.69     19.99         14         \n",
       "5 24846  Medium         0.08       3.28      2.31         14         \n",
       "6 24847  Medium         0.05       3.28      4.20         14         \n",
       "  Ship Mode      Customer Segment Product Category Product Sub-Category ⋯\n",
       "1 Express Air    Corporate        Office Supplies  Pens & Art Supplies  ⋯\n",
       "2 Delivery Truck Home Office      Furniture        Chairs & Chairmats   ⋯\n",
       "3 Regular Air    Home Office      Furniture        Office Furnishings   ⋯\n",
       "4 Regular Air    Small Business   Furniture        Office Furnishings   ⋯\n",
       "5 Regular Air    Small Business   Office Supplies  Pens & Art Supplies  ⋯\n",
       "6 Regular Air    Small Business   Office Supplies  Pens & Art Supplies  ⋯\n",
       "  Profit    Quantity ordered new Sales   Order ID Manager date       day\n",
       "1    4.5600  4                     13.01 88522    William 2015-01-07 07 \n",
       "2 4390.3665 12                   6362.85 90193    William 2015-06-13 13 \n",
       "3  -53.8096 22                    211.15 90192    Erin    2015-02-15 15 \n",
       "4  803.4705 16                   1164.45 86838    Chris   2015-05-12 12 \n",
       "5  -24.0300  7                     22.23 86838    Chris   2015-05-12 12 \n",
       "6  -37.0300  4                     13.99 86838    Chris   2015-05-12 12 \n",
       "  day_of_week Month year\n",
       "1 Wednesday   Jan   2015\n",
       "2 Saturday    Jun   2015\n",
       "3 Sunday      Feb   2015\n",
       "4 Tuesday     May   2015\n",
       "5 Tuesday     May   2015\n",
       "6 Tuesday     May   2015"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Add columns that list date,month,day and year \n",
    "orders_mangers$date <- as.Date(orders_mangers$`Order Date`) #The default format is yyyy-mm-dd\n",
    "orders_mangers$day <- format(as.Date(orders_mangers$date), \"%d\")\n",
    "orders_mangers$day_of_week <- format(as.Date(orders_mangers$date), \"%A\")\n",
    "orders_mangers$Month <- format(orders_mangers$date, \"%b\")# change month numbers to dates \n",
    "orders_mangers$year <- format(as.Date(orders_mangers$date), \"%Y\")\n",
    "\n",
    "head(orders_mangers)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "9d45aacd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:06.857598Z",
     "iopub.status.busy": "2022-11-13T22:09:06.856145Z",
     "iopub.status.idle": "2022-11-13T22:09:06.949590Z",
     "shell.execute_reply": "2022-11-13T22:09:06.946928Z"
    },
    "papermill": {
     "duration": 0.110901,
     "end_time": "2022-11-13T22:09:06.952826",
     "exception": false,
     "start_time": "2022-11-13T22:09:06.841925",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [1,952 × 31] (S3: tbl_df/tbl/data.frame)\n",
      " $ Row ID              : num [1:1952] 20847 20228 21776 24844 24846 ...\n",
      " $ Order Priority      : chr [1:1952] \"High\" \"Not Specified\" \"Critical\" \"Medium\" ...\n",
      " $ Discount            : num [1:1952] 0.01 0.02 0.06 0.09 0.08 0.05 0.05 0 0.01 0.04 ...\n",
      " $ Unit Price          : num [1:1952] 2.84 500.98 9.48 78.69 3.28 ...\n",
      " $ Shipping Cost       : num [1:1952] 0.93 26 7.29 19.99 2.31 ...\n",
      " $ Customer ID         : num [1:1952] 3 5 11 14 14 14 14 15 15 16 ...\n",
      " $ Ship Mode           : chr [1:1952] \"Express Air\" \"Delivery Truck\" \"Regular Air\" \"Regular Air\" ...\n",
      " $ Customer Segment    : chr [1:1952] \"Corporate\" \"Home Office\" \"Home Office\" \"Small Business\" ...\n",
      " $ Product Category    : chr [1:1952] \"Office Supplies\" \"Furniture\" \"Furniture\" \"Furniture\" ...\n",
      " $ Product Sub-Category: chr [1:1952] \"Pens & Art Supplies\" \"Chairs & Chairmats\" \"Office Furnishings\" \"Office Furnishings\" ...\n",
      " $ Product Container   : chr [1:1952] \"Wrap Bag\" \"Jumbo Drum\" \"Small Pack\" \"Small Box\" ...\n",
      " $ Product Name        : chr [1:1952] \"SANFORD Liquid Accent™ Tank-Style Highlighters\" \"Global Troy™ Executive Leather Low-Back Tilter\" \"DAX Two-Tone Rosewood/Black Document Frame, Desktop, 5 x 7\" \"Howard Miller 12-3/4 Diameter Accuwave DS ™ Wall Clock\" ...\n",
      " $ Product Base Margin : num [1:1952] 0.54 0.6 0.45 0.43 0.56 0.56 0.36 0.38 0.4 0.39 ...\n",
      " $ Country             : chr [1:1952] \"United States\" \"United States\" \"United States\" \"United States\" ...\n",
      " $ Region              : chr [1:1952] \"West\" \"West\" \"East\" \"Central\" ...\n",
      " $ State or Province   : chr [1:1952] \"Washington\" \"California\" \"New Jersey\" \"Minnesota\" ...\n",
      " $ City                : chr [1:1952] \"Anacortes\" \"San Gabriel\" \"Roselle\" \"Prior Lake\" ...\n",
      " $ Postal Code         : num [1:1952] 98221 91776 7203 55372 55372 ...\n",
      " $ Order Date          : POSIXct[1:1952], format: \"2015-01-07\" \"2015-06-13\" ...\n",
      " $ Ship Date           : POSIXct[1:1952], format: \"2015-01-08\" \"2015-06-15\" ...\n",
      " $ Profit              : num [1:1952] 4.56 4390.37 -53.81 803.47 -24.03 ...\n",
      " $ Quantity ordered new: num [1:1952] 4 12 22 16 7 4 4 7 10 6 ...\n",
      " $ Sales               : num [1:1952] 13 6362.9 211.2 1164.5 22.2 ...\n",
      " $ Order ID            : num [1:1952] 88522 90193 90192 86838 86838 ...\n",
      " $ Manager             : chr [1:1952] \"William\" \"William\" \"Erin\" \"Chris\" ...\n",
      " $ date                : Date[1:1952], format: \"2015-01-07\" \"2015-06-13\" ...\n",
      " $ day                 : chr [1:1952] \"07\" \"13\" \"15\" \"12\" ...\n",
      " $ day_of_week         : chr [1:1952] \"Wednesday\" \"Saturday\" \"Sunday\" \"Tuesday\" ...\n",
      " $ Month               : chr [1:1952] \"Jan\" \"Jun\" \"Feb\" \"May\" ...\n",
      " $ year                : chr [1:1952] \"2015\" \"2015\" \"2015\" \"2015\" ...\n",
      " $ orderduration       : 'difftime' num [1:1952] 24 48 48 48 ...\n",
      "  ..- attr(*, \"units\")= chr \"hours\"\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 31</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Row ID</th><th scope=col>Order Priority</th><th scope=col>Discount</th><th scope=col>Unit Price</th><th scope=col>Shipping Cost</th><th scope=col>Customer ID</th><th scope=col>Ship Mode</th><th scope=col>Customer Segment</th><th scope=col>Product Category</th><th scope=col>Product Sub-Category</th><th scope=col>⋯</th><th scope=col>Quantity ordered new</th><th scope=col>Sales</th><th scope=col>Order ID</th><th scope=col>Manager</th><th scope=col>date</th><th scope=col>day</th><th scope=col>day_of_week</th><th scope=col>Month</th><th scope=col>year</th><th scope=col>orderduration</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>⋯</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;date&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;drtn&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>20847</td><td><span style=white-space:pre-wrap>High         </span></td><td>0.01</td><td><span style=white-space:pre-wrap>  2.84</span></td><td> 0.93</td><td> 3</td><td><span style=white-space:pre-wrap>Express Air   </span></td><td><span style=white-space:pre-wrap>Corporate     </span></td><td>Office Supplies</td><td>Pens &amp; Art Supplies</td><td>⋯</td><td> 4</td><td><span style=white-space:pre-wrap>  13.01</span></td><td>88522</td><td>William</td><td>2015-01-07</td><td>07</td><td>Wednesday</td><td>Jan</td><td>2015</td><td>24 hours</td></tr>\n",
       "\t<tr><td>20228</td><td>Not Specified</td><td>0.02</td><td>500.98</td><td>26.00</td><td> 5</td><td>Delivery Truck</td><td><span style=white-space:pre-wrap>Home Office   </span></td><td><span style=white-space:pre-wrap>Furniture      </span></td><td>Chairs &amp; Chairmats </td><td>⋯</td><td>12</td><td>6362.85</td><td>90193</td><td>William</td><td>2015-06-13</td><td>13</td><td>Saturday </td><td>Jun</td><td>2015</td><td>48 hours</td></tr>\n",
       "\t<tr><td>21776</td><td>Critical     </td><td>0.06</td><td>  9.48</td><td> 7.29</td><td>11</td><td>Regular Air   </td><td>Home Office   </td><td>Furniture      </td><td>Office Furnishings </td><td>⋯</td><td>22</td><td> 211.15</td><td>90192</td><td>Erin   </td><td>2015-02-15</td><td>15</td><td>Sunday   </td><td>Feb</td><td>2015</td><td>48 hours</td></tr>\n",
       "\t<tr><td>24844</td><td>Medium       </td><td>0.09</td><td> 78.69</td><td>19.99</td><td>14</td><td>Regular Air   </td><td>Small Business</td><td>Furniture      </td><td>Office Furnishings </td><td>⋯</td><td>16</td><td>1164.45</td><td>86838</td><td>Chris  </td><td>2015-05-12</td><td>12</td><td>Tuesday  </td><td>May</td><td>2015</td><td>48 hours</td></tr>\n",
       "\t<tr><td>24846</td><td><span style=white-space:pre-wrap>Medium       </span></td><td>0.08</td><td><span style=white-space:pre-wrap>  3.28</span></td><td> 2.31</td><td>14</td><td><span style=white-space:pre-wrap>Regular Air   </span></td><td>Small Business</td><td>Office Supplies</td><td>Pens &amp; Art Supplies</td><td>⋯</td><td> 7</td><td><span style=white-space:pre-wrap>  22.23</span></td><td>86838</td><td><span style=white-space:pre-wrap>Chris  </span></td><td>2015-05-12</td><td>12</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>May</td><td>2015</td><td>24 hours</td></tr>\n",
       "\t<tr><td>24847</td><td><span style=white-space:pre-wrap>Medium       </span></td><td>0.05</td><td><span style=white-space:pre-wrap>  3.28</span></td><td> 4.20</td><td>14</td><td><span style=white-space:pre-wrap>Regular Air   </span></td><td>Small Business</td><td>Office Supplies</td><td>Pens &amp; Art Supplies</td><td>⋯</td><td> 4</td><td><span style=white-space:pre-wrap>  13.99</span></td><td>86838</td><td><span style=white-space:pre-wrap>Chris  </span></td><td>2015-05-12</td><td>12</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td>May</td><td>2015</td><td>24 hours</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 31\n",
       "\\begin{tabular}{lllllllllllllllllllll}\n",
       " Row ID & Order Priority & Discount & Unit Price & Shipping Cost & Customer ID & Ship Mode & Customer Segment & Product Category & Product Sub-Category & ⋯ & Quantity ordered new & Sales & Order ID & Manager & date & day & day\\_of\\_week & Month & year & orderduration\\\\\n",
       " <dbl> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <chr> & <chr> & <chr> & ⋯ & <dbl> & <dbl> & <dbl> & <chr> & <date> & <chr> & <chr> & <chr> & <chr> & <drtn>\\\\\n",
       "\\hline\n",
       "\t 20847 & High          & 0.01 &   2.84 &  0.93 &  3 & Express Air    & Corporate      & Office Supplies & Pens \\& Art Supplies & ⋯ &  4 &   13.01 & 88522 & William & 2015-01-07 & 07 & Wednesday & Jan & 2015 & 24 hours\\\\\n",
       "\t 20228 & Not Specified & 0.02 & 500.98 & 26.00 &  5 & Delivery Truck & Home Office    & Furniture       & Chairs \\& Chairmats  & ⋯ & 12 & 6362.85 & 90193 & William & 2015-06-13 & 13 & Saturday  & Jun & 2015 & 48 hours\\\\\n",
       "\t 21776 & Critical      & 0.06 &   9.48 &  7.29 & 11 & Regular Air    & Home Office    & Furniture       & Office Furnishings  & ⋯ & 22 &  211.15 & 90192 & Erin    & 2015-02-15 & 15 & Sunday    & Feb & 2015 & 48 hours\\\\\n",
       "\t 24844 & Medium        & 0.09 &  78.69 & 19.99 & 14 & Regular Air    & Small Business & Furniture       & Office Furnishings  & ⋯ & 16 & 1164.45 & 86838 & Chris   & 2015-05-12 & 12 & Tuesday   & May & 2015 & 48 hours\\\\\n",
       "\t 24846 & Medium        & 0.08 &   3.28 &  2.31 & 14 & Regular Air    & Small Business & Office Supplies & Pens \\& Art Supplies & ⋯ &  7 &   22.23 & 86838 & Chris   & 2015-05-12 & 12 & Tuesday   & May & 2015 & 24 hours\\\\\n",
       "\t 24847 & Medium        & 0.05 &   3.28 &  4.20 & 14 & Regular Air    & Small Business & Office Supplies & Pens \\& Art Supplies & ⋯ &  4 &   13.99 & 86838 & Chris   & 2015-05-12 & 12 & Tuesday   & May & 2015 & 24 hours\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 31\n",
       "\n",
       "| Row ID &lt;dbl&gt; | Order Priority &lt;chr&gt; | Discount &lt;dbl&gt; | Unit Price &lt;dbl&gt; | Shipping Cost &lt;dbl&gt; | Customer ID &lt;dbl&gt; | Ship Mode &lt;chr&gt; | Customer Segment &lt;chr&gt; | Product Category &lt;chr&gt; | Product Sub-Category &lt;chr&gt; | ⋯ ⋯ | Quantity ordered new &lt;dbl&gt; | Sales &lt;dbl&gt; | Order ID &lt;dbl&gt; | Manager &lt;chr&gt; | date &lt;date&gt; | day &lt;chr&gt; | day_of_week &lt;chr&gt; | Month &lt;chr&gt; | year &lt;chr&gt; | orderduration &lt;drtn&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 20847 | High          | 0.01 |   2.84 |  0.93 |  3 | Express Air    | Corporate      | Office Supplies | Pens &amp; Art Supplies | ⋯ |  4 |   13.01 | 88522 | William | 2015-01-07 | 07 | Wednesday | Jan | 2015 | 24 hours |\n",
       "| 20228 | Not Specified | 0.02 | 500.98 | 26.00 |  5 | Delivery Truck | Home Office    | Furniture       | Chairs &amp; Chairmats  | ⋯ | 12 | 6362.85 | 90193 | William | 2015-06-13 | 13 | Saturday  | Jun | 2015 | 48 hours |\n",
       "| 21776 | Critical      | 0.06 |   9.48 |  7.29 | 11 | Regular Air    | Home Office    | Furniture       | Office Furnishings  | ⋯ | 22 |  211.15 | 90192 | Erin    | 2015-02-15 | 15 | Sunday    | Feb | 2015 | 48 hours |\n",
       "| 24844 | Medium        | 0.09 |  78.69 | 19.99 | 14 | Regular Air    | Small Business | Furniture       | Office Furnishings  | ⋯ | 16 | 1164.45 | 86838 | Chris   | 2015-05-12 | 12 | Tuesday   | May | 2015 | 48 hours |\n",
       "| 24846 | Medium        | 0.08 |   3.28 |  2.31 | 14 | Regular Air    | Small Business | Office Supplies | Pens &amp; Art Supplies | ⋯ |  7 |   22.23 | 86838 | Chris   | 2015-05-12 | 12 | Tuesday   | May | 2015 | 24 hours |\n",
       "| 24847 | Medium        | 0.05 |   3.28 |  4.20 | 14 | Regular Air    | Small Business | Office Supplies | Pens &amp; Art Supplies | ⋯ |  4 |   13.99 | 86838 | Chris   | 2015-05-12 | 12 | Tuesday   | May | 2015 | 24 hours |\n",
       "\n"
      ],
      "text/plain": [
       "  Row ID Order Priority Discount Unit Price Shipping Cost Customer ID\n",
       "1 20847  High           0.01       2.84      0.93          3         \n",
       "2 20228  Not Specified  0.02     500.98     26.00          5         \n",
       "3 21776  Critical       0.06       9.48      7.29         11         \n",
       "4 24844  Medium         0.09      78.69     19.99         14         \n",
       "5 24846  Medium         0.08       3.28      2.31         14         \n",
       "6 24847  Medium         0.05       3.28      4.20         14         \n",
       "  Ship Mode      Customer Segment Product Category Product Sub-Category ⋯\n",
       "1 Express Air    Corporate        Office Supplies  Pens & Art Supplies  ⋯\n",
       "2 Delivery Truck Home Office      Furniture        Chairs & Chairmats   ⋯\n",
       "3 Regular Air    Home Office      Furniture        Office Furnishings   ⋯\n",
       "4 Regular Air    Small Business   Furniture        Office Furnishings   ⋯\n",
       "5 Regular Air    Small Business   Office Supplies  Pens & Art Supplies  ⋯\n",
       "6 Regular Air    Small Business   Office Supplies  Pens & Art Supplies  ⋯\n",
       "  Quantity ordered new Sales   Order ID Manager date       day day_of_week\n",
       "1  4                     13.01 88522    William 2015-01-07 07  Wednesday  \n",
       "2 12                   6362.85 90193    William 2015-06-13 13  Saturday   \n",
       "3 22                    211.15 90192    Erin    2015-02-15 15  Sunday     \n",
       "4 16                   1164.45 86838    Chris   2015-05-12 12  Tuesday    \n",
       "5  7                     22.23 86838    Chris   2015-05-12 12  Tuesday    \n",
       "6  4                     13.99 86838    Chris   2015-05-12 12  Tuesday    \n",
       "  Month year orderduration\n",
       "1 Jan   2015 24 hours     \n",
       "2 Jun   2015 48 hours     \n",
       "3 Feb   2015 48 hours     \n",
       "4 May   2015 48 hours     \n",
       "5 May   2015 24 hours     \n",
       "6 May   2015 24 hours     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Shipping duration\n",
    "orders_mangers$orderduration <- difftime(orders_mangers$`Ship Date`,orders_mangers$`Order Date`, units = c(\"hours\"))\n",
    "str(orders_mangers)\n",
    "head(orders_mangers)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "140b6899",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:06.986566Z",
     "iopub.status.busy": "2022-11-13T22:09:06.984544Z",
     "iopub.status.idle": "2022-11-13T22:09:07.009808Z",
     "shell.execute_reply": "2022-11-13T22:09:07.007979Z"
    },
    "papermill": {
     "duration": 0.043834,
     "end_time": "2022-11-13T22:09:07.012421",
     "exception": false,
     "start_time": "2022-11-13T22:09:06.968587",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Convert \"orderduration\" from Factor to numeric so we can run calculations on the data\n",
    "orders_mangers$orderduration <- as.numeric(as.character(orders_mangers$orderduration))\n",
    "is.numeric(orders_mangers$orderduration)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f5d69e9e",
   "metadata": {
    "papermill": {
     "duration": 0.011711,
     "end_time": "2022-11-13T22:09:07.038609",
     "exception": false,
     "start_time": "2022-11-13T22:09:07.026898",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Descriptive Analysis"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "bf799a19",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:07.066622Z",
     "iopub.status.busy": "2022-11-13T22:09:07.064529Z",
     "iopub.status.idle": "2022-11-13T22:09:07.176894Z",
     "shell.execute_reply": "2022-11-13T22:09:07.175266Z"
    },
    "papermill": {
     "duration": 0.128652,
     "end_time": "2022-11-13T22:09:07.179423",
     "exception": false,
     "start_time": "2022-11-13T22:09:07.050771",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 4 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>orders_mangers$Region</th><th scope=col>orders_mangers$orderduration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Central</td><td>46.38869</td></tr>\n",
       "\t<tr><td>East   </td><td>44.45570</td></tr>\n",
       "\t<tr><td>South  </td><td>46.42534</td></tr>\n",
       "\t<tr><td>West   </td><td>49.07234</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 4 × 2\n",
       "\\begin{tabular}{ll}\n",
       " orders\\_mangers\\$Region & orders\\_mangers\\$orderduration\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t Central & 46.38869\\\\\n",
       "\t East    & 44.45570\\\\\n",
       "\t South   & 46.42534\\\\\n",
       "\t West    & 49.07234\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 4 × 2\n",
       "\n",
       "| orders_mangers$Region &lt;chr&gt; | orders_mangers$orderduration &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| Central | 46.38869 |\n",
       "| East    | 44.45570 |\n",
       "| South   | 46.42534 |\n",
       "| West    | 49.07234 |\n",
       "\n"
      ],
      "text/plain": [
       "  orders_mangers$Region orders_mangers$orderduration\n",
       "1 Central               46.38869                    \n",
       "2 East                  44.45570                    \n",
       "3 South                 46.42534                    \n",
       "4 West                  49.07234                    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 4 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>orders_mangers$Region</th><th scope=col>orders_mangers$orderduration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Central</td><td>48</td></tr>\n",
       "\t<tr><td>East   </td><td>48</td></tr>\n",
       "\t<tr><td>South  </td><td>48</td></tr>\n",
       "\t<tr><td>West   </td><td>48</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 4 × 2\n",
       "\\begin{tabular}{ll}\n",
       " orders\\_mangers\\$Region & orders\\_mangers\\$orderduration\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t Central & 48\\\\\n",
       "\t East    & 48\\\\\n",
       "\t South   & 48\\\\\n",
       "\t West    & 48\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 4 × 2\n",
       "\n",
       "| orders_mangers$Region &lt;chr&gt; | orders_mangers$orderduration &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| Central | 48 |\n",
       "| East    | 48 |\n",
       "| South   | 48 |\n",
       "| West    | 48 |\n",
       "\n"
      ],
      "text/plain": [
       "  orders_mangers$Region orders_mangers$orderduration\n",
       "1 Central               48                          \n",
       "2 East                  48                          \n",
       "3 South                 48                          \n",
       "4 West                  48                          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 4 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>orders_mangers$Region</th><th scope=col>orders_mangers$orderduration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Central</td><td>0</td></tr>\n",
       "\t<tr><td>East   </td><td>0</td></tr>\n",
       "\t<tr><td>South  </td><td>0</td></tr>\n",
       "\t<tr><td>West   </td><td>0</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 4 × 2\n",
       "\\begin{tabular}{ll}\n",
       " orders\\_mangers\\$Region & orders\\_mangers\\$orderduration\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t Central & 0\\\\\n",
       "\t East    & 0\\\\\n",
       "\t South   & 0\\\\\n",
       "\t West    & 0\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 4 × 2\n",
       "\n",
       "| orders_mangers$Region &lt;chr&gt; | orders_mangers$orderduration &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| Central | 0 |\n",
       "| East    | 0 |\n",
       "| South   | 0 |\n",
       "| West    | 0 |\n",
       "\n"
      ],
      "text/plain": [
       "  orders_mangers$Region orders_mangers$orderduration\n",
       "1 Central               0                           \n",
       "2 East                  0                           \n",
       "3 South                 0                           \n",
       "4 West                  0                           "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 4 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>orders_mangers$Region</th><th scope=col>orders_mangers$orderduration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Central</td><td>216</td></tr>\n",
       "\t<tr><td>East   </td><td>216</td></tr>\n",
       "\t<tr><td>South  </td><td>240</td></tr>\n",
       "\t<tr><td>West   </td><td>216</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 4 × 2\n",
       "\\begin{tabular}{ll}\n",
       " orders\\_mangers\\$Region & orders\\_mangers\\$orderduration\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t Central & 216\\\\\n",
       "\t East    & 216\\\\\n",
       "\t South   & 240\\\\\n",
       "\t West    & 216\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 4 × 2\n",
       "\n",
       "| orders_mangers$Region &lt;chr&gt; | orders_mangers$orderduration &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| Central | 216 |\n",
       "| East    | 216 |\n",
       "| South   | 240 |\n",
       "| West    | 216 |\n",
       "\n"
      ],
      "text/plain": [
       "  orders_mangers$Region orders_mangers$orderduration\n",
       "1 Central               216                         \n",
       "2 East                  216                         \n",
       "3 South                 240                         \n",
       "4 West                  216                         "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 28 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>orders_mangers$Region</th><th scope=col>orders_mangers$day_of_week</th><th scope=col>orders_mangers$orderduration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Central</td><td>Friday   </td><td>45.06122</td></tr>\n",
       "\t<tr><td>East   </td><td>Friday   </td><td>43.86207</td></tr>\n",
       "\t<tr><td>South  </td><td>Friday   </td><td>45.78462</td></tr>\n",
       "\t<tr><td>West   </td><td>Friday   </td><td>44.00000</td></tr>\n",
       "\t<tr><td>Central</td><td>Monday   </td><td>48.98630</td></tr>\n",
       "\t<tr><td>East   </td><td>Monday   </td><td>44.57143</td></tr>\n",
       "\t<tr><td>South  </td><td>Monday   </td><td>44.33898</td></tr>\n",
       "\t<tr><td>West   </td><td>Monday   </td><td>46.26087</td></tr>\n",
       "\t<tr><td>Central</td><td>Saturday </td><td>52.50000</td></tr>\n",
       "\t<tr><td>East   </td><td>Saturday </td><td>52.54054</td></tr>\n",
       "\t<tr><td>South  </td><td>Saturday </td><td>48.32432</td></tr>\n",
       "\t<tr><td>West   </td><td>Saturday </td><td>43.53488</td></tr>\n",
       "\t<tr><td>Central</td><td>Sunday   </td><td>45.84615</td></tr>\n",
       "\t<tr><td>East   </td><td>Sunday   </td><td>48.42105</td></tr>\n",
       "\t<tr><td>South  </td><td>Sunday   </td><td>54.00000</td></tr>\n",
       "\t<tr><td>West   </td><td>Sunday   </td><td>63.18367</td></tr>\n",
       "\t<tr><td>Central</td><td>Thursday </td><td>43.82609</td></tr>\n",
       "\t<tr><td>East   </td><td>Thursday </td><td>35.78182</td></tr>\n",
       "\t<tr><td>South  </td><td>Thursday </td><td>45.84615</td></tr>\n",
       "\t<tr><td>West   </td><td>Thursday </td><td>47.33333</td></tr>\n",
       "\t<tr><td>Central</td><td>Tuesday  </td><td>46.54545</td></tr>\n",
       "\t<tr><td>East   </td><td>Tuesday  </td><td>47.01370</td></tr>\n",
       "\t<tr><td>South  </td><td>Tuesday  </td><td>45.55932</td></tr>\n",
       "\t<tr><td>West   </td><td>Tuesday  </td><td>58.82353</td></tr>\n",
       "\t<tr><td>Central</td><td>Wednesday</td><td>42.83544</td></tr>\n",
       "\t<tr><td>East   </td><td>Wednesday</td><td>37.47945</td></tr>\n",
       "\t<tr><td>South  </td><td>Wednesday</td><td>41.45455</td></tr>\n",
       "\t<tr><td>West   </td><td>Wednesday</td><td>48.00000</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 28 × 3\n",
       "\\begin{tabular}{lll}\n",
       " orders\\_mangers\\$Region & orders\\_mangers\\$day\\_of\\_week & orders\\_mangers\\$orderduration\\\\\n",
       " <chr> & <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t Central & Friday    & 45.06122\\\\\n",
       "\t East    & Friday    & 43.86207\\\\\n",
       "\t South   & Friday    & 45.78462\\\\\n",
       "\t West    & Friday    & 44.00000\\\\\n",
       "\t Central & Monday    & 48.98630\\\\\n",
       "\t East    & Monday    & 44.57143\\\\\n",
       "\t South   & Monday    & 44.33898\\\\\n",
       "\t West    & Monday    & 46.26087\\\\\n",
       "\t Central & Saturday  & 52.50000\\\\\n",
       "\t East    & Saturday  & 52.54054\\\\\n",
       "\t South   & Saturday  & 48.32432\\\\\n",
       "\t West    & Saturday  & 43.53488\\\\\n",
       "\t Central & Sunday    & 45.84615\\\\\n",
       "\t East    & Sunday    & 48.42105\\\\\n",
       "\t South   & Sunday    & 54.00000\\\\\n",
       "\t West    & Sunday    & 63.18367\\\\\n",
       "\t Central & Thursday  & 43.82609\\\\\n",
       "\t East    & Thursday  & 35.78182\\\\\n",
       "\t South   & Thursday  & 45.84615\\\\\n",
       "\t West    & Thursday  & 47.33333\\\\\n",
       "\t Central & Tuesday   & 46.54545\\\\\n",
       "\t East    & Tuesday   & 47.01370\\\\\n",
       "\t South   & Tuesday   & 45.55932\\\\\n",
       "\t West    & Tuesday   & 58.82353\\\\\n",
       "\t Central & Wednesday & 42.83544\\\\\n",
       "\t East    & Wednesday & 37.47945\\\\\n",
       "\t South   & Wednesday & 41.45455\\\\\n",
       "\t West    & Wednesday & 48.00000\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 28 × 3\n",
       "\n",
       "| orders_mangers$Region &lt;chr&gt; | orders_mangers$day_of_week &lt;chr&gt; | orders_mangers$orderduration &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| Central | Friday    | 45.06122 |\n",
       "| East    | Friday    | 43.86207 |\n",
       "| South   | Friday    | 45.78462 |\n",
       "| West    | Friday    | 44.00000 |\n",
       "| Central | Monday    | 48.98630 |\n",
       "| East    | Monday    | 44.57143 |\n",
       "| South   | Monday    | 44.33898 |\n",
       "| West    | Monday    | 46.26087 |\n",
       "| Central | Saturday  | 52.50000 |\n",
       "| East    | Saturday  | 52.54054 |\n",
       "| South   | Saturday  | 48.32432 |\n",
       "| West    | Saturday  | 43.53488 |\n",
       "| Central | Sunday    | 45.84615 |\n",
       "| East    | Sunday    | 48.42105 |\n",
       "| South   | Sunday    | 54.00000 |\n",
       "| West    | Sunday    | 63.18367 |\n",
       "| Central | Thursday  | 43.82609 |\n",
       "| East    | Thursday  | 35.78182 |\n",
       "| South   | Thursday  | 45.84615 |\n",
       "| West    | Thursday  | 47.33333 |\n",
       "| Central | Tuesday   | 46.54545 |\n",
       "| East    | Tuesday   | 47.01370 |\n",
       "| South   | Tuesday   | 45.55932 |\n",
       "| West    | Tuesday   | 58.82353 |\n",
       "| Central | Wednesday | 42.83544 |\n",
       "| East    | Wednesday | 37.47945 |\n",
       "| South   | Wednesday | 41.45455 |\n",
       "| West    | Wednesday | 48.00000 |\n",
       "\n"
      ],
      "text/plain": [
       "   orders_mangers$Region orders_mangers$day_of_week\n",
       "1  Central               Friday                    \n",
       "2  East                  Friday                    \n",
       "3  South                 Friday                    \n",
       "4  West                  Friday                    \n",
       "5  Central               Monday                    \n",
       "6  East                  Monday                    \n",
       "7  South                 Monday                    \n",
       "8  West                  Monday                    \n",
       "9  Central               Saturday                  \n",
       "10 East                  Saturday                  \n",
       "11 South                 Saturday                  \n",
       "12 West                  Saturday                  \n",
       "13 Central               Sunday                    \n",
       "14 East                  Sunday                    \n",
       "15 South                 Sunday                    \n",
       "16 West                  Sunday                    \n",
       "17 Central               Thursday                  \n",
       "18 East                  Thursday                  \n",
       "19 South                 Thursday                  \n",
       "20 West                  Thursday                  \n",
       "21 Central               Tuesday                   \n",
       "22 East                  Tuesday                   \n",
       "23 South                 Tuesday                   \n",
       "24 West                  Tuesday                   \n",
       "25 Central               Wednesday                 \n",
       "26 East                  Wednesday                 \n",
       "27 South                 Wednesday                 \n",
       "28 West                  Wednesday                 \n",
       "   orders_mangers$orderduration\n",
       "1  45.06122                    \n",
       "2  43.86207                    \n",
       "3  45.78462                    \n",
       "4  44.00000                    \n",
       "5  48.98630                    \n",
       "6  44.57143                    \n",
       "7  44.33898                    \n",
       "8  46.26087                    \n",
       "9  52.50000                    \n",
       "10 52.54054                    \n",
       "11 48.32432                    \n",
       "12 43.53488                    \n",
       "13 45.84615                    \n",
       "14 48.42105                    \n",
       "15 54.00000                    \n",
       "16 63.18367                    \n",
       "17 43.82609                    \n",
       "18 35.78182                    \n",
       "19 45.84615                    \n",
       "20 47.33333                    \n",
       "21 46.54545                    \n",
       "22 47.01370                    \n",
       "23 45.55932                    \n",
       "24 58.82353                    \n",
       "25 42.83544                    \n",
       "26 37.47945                    \n",
       "27 41.45455                    \n",
       "28 48.00000                    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "aggregate(orders_mangers$orderduration ~ orders_mangers$Region, FUN = mean)#straight average (total ride length / rides)\n",
    "aggregate(orders_mangers$orderduration ~ orders_mangers$Region, FUN = median)\n",
    "aggregate(orders_mangers$orderduration ~ orders_mangers$Region, FUN = min)#shortest delivery time \n",
    "aggregate(orders_mangers$orderduration ~ orders_mangers$Region, FUN = max)#longest shipping time\n",
    "\n",
    "aggregate(orders_mangers$orderduration ~ orders_mangers$Region + orders_mangers$day_of_week, FUN = mean)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "abceb32e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:07.219683Z",
     "iopub.status.busy": "2022-11-13T22:09:07.217442Z",
     "iopub.status.idle": "2022-11-13T22:09:07.406025Z",
     "shell.execute_reply": "2022-11-13T22:09:07.403020Z"
    },
    "papermill": {
     "duration": 0.21646,
     "end_time": "2022-11-13T22:09:07.409005",
     "exception": false,
     "start_time": "2022-11-13T22:09:07.192545",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 28 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>orders_mangers$Region</th><th scope=col>orders_mangers$day_of_week</th><th scope=col>orders_mangers$orderduration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Central</td><td>Sunday   </td><td>45.84615</td></tr>\n",
       "\t<tr><td>East   </td><td>Sunday   </td><td>48.42105</td></tr>\n",
       "\t<tr><td>South  </td><td>Sunday   </td><td>54.00000</td></tr>\n",
       "\t<tr><td>West   </td><td>Sunday   </td><td>63.18367</td></tr>\n",
       "\t<tr><td>Central</td><td>Monday   </td><td>48.98630</td></tr>\n",
       "\t<tr><td>East   </td><td>Monday   </td><td>44.57143</td></tr>\n",
       "\t<tr><td>South  </td><td>Monday   </td><td>44.33898</td></tr>\n",
       "\t<tr><td>West   </td><td>Monday   </td><td>46.26087</td></tr>\n",
       "\t<tr><td>Central</td><td>Tuesday  </td><td>46.54545</td></tr>\n",
       "\t<tr><td>East   </td><td>Tuesday  </td><td>47.01370</td></tr>\n",
       "\t<tr><td>South  </td><td>Tuesday  </td><td>45.55932</td></tr>\n",
       "\t<tr><td>West   </td><td>Tuesday  </td><td>58.82353</td></tr>\n",
       "\t<tr><td>Central</td><td>Wednesday</td><td>42.83544</td></tr>\n",
       "\t<tr><td>East   </td><td>Wednesday</td><td>37.47945</td></tr>\n",
       "\t<tr><td>South  </td><td>Wednesday</td><td>41.45455</td></tr>\n",
       "\t<tr><td>West   </td><td>Wednesday</td><td>48.00000</td></tr>\n",
       "\t<tr><td>Central</td><td>Thursday </td><td>43.82609</td></tr>\n",
       "\t<tr><td>East   </td><td>Thursday </td><td>35.78182</td></tr>\n",
       "\t<tr><td>South  </td><td>Thursday </td><td>45.84615</td></tr>\n",
       "\t<tr><td>West   </td><td>Thursday </td><td>47.33333</td></tr>\n",
       "\t<tr><td>Central</td><td>Friday   </td><td>45.06122</td></tr>\n",
       "\t<tr><td>East   </td><td>Friday   </td><td>43.86207</td></tr>\n",
       "\t<tr><td>South  </td><td>Friday   </td><td>45.78462</td></tr>\n",
       "\t<tr><td>West   </td><td>Friday   </td><td>44.00000</td></tr>\n",
       "\t<tr><td>Central</td><td>Saturday </td><td>52.50000</td></tr>\n",
       "\t<tr><td>East   </td><td>Saturday </td><td>52.54054</td></tr>\n",
       "\t<tr><td>South  </td><td>Saturday </td><td>48.32432</td></tr>\n",
       "\t<tr><td>West   </td><td>Saturday </td><td>43.53488</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 28 × 3\n",
       "\\begin{tabular}{lll}\n",
       " orders\\_mangers\\$Region & orders\\_mangers\\$day\\_of\\_week & orders\\_mangers\\$orderduration\\\\\n",
       " <chr> & <ord> & <dbl>\\\\\n",
       "\\hline\n",
       "\t Central & Sunday    & 45.84615\\\\\n",
       "\t East    & Sunday    & 48.42105\\\\\n",
       "\t South   & Sunday    & 54.00000\\\\\n",
       "\t West    & Sunday    & 63.18367\\\\\n",
       "\t Central & Monday    & 48.98630\\\\\n",
       "\t East    & Monday    & 44.57143\\\\\n",
       "\t South   & Monday    & 44.33898\\\\\n",
       "\t West    & Monday    & 46.26087\\\\\n",
       "\t Central & Tuesday   & 46.54545\\\\\n",
       "\t East    & Tuesday   & 47.01370\\\\\n",
       "\t South   & Tuesday   & 45.55932\\\\\n",
       "\t West    & Tuesday   & 58.82353\\\\\n",
       "\t Central & Wednesday & 42.83544\\\\\n",
       "\t East    & Wednesday & 37.47945\\\\\n",
       "\t South   & Wednesday & 41.45455\\\\\n",
       "\t West    & Wednesday & 48.00000\\\\\n",
       "\t Central & Thursday  & 43.82609\\\\\n",
       "\t East    & Thursday  & 35.78182\\\\\n",
       "\t South   & Thursday  & 45.84615\\\\\n",
       "\t West    & Thursday  & 47.33333\\\\\n",
       "\t Central & Friday    & 45.06122\\\\\n",
       "\t East    & Friday    & 43.86207\\\\\n",
       "\t South   & Friday    & 45.78462\\\\\n",
       "\t West    & Friday    & 44.00000\\\\\n",
       "\t Central & Saturday  & 52.50000\\\\\n",
       "\t East    & Saturday  & 52.54054\\\\\n",
       "\t South   & Saturday  & 48.32432\\\\\n",
       "\t West    & Saturday  & 43.53488\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 28 × 3\n",
       "\n",
       "| orders_mangers$Region &lt;chr&gt; | orders_mangers$day_of_week &lt;ord&gt; | orders_mangers$orderduration &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| Central | Sunday    | 45.84615 |\n",
       "| East    | Sunday    | 48.42105 |\n",
       "| South   | Sunday    | 54.00000 |\n",
       "| West    | Sunday    | 63.18367 |\n",
       "| Central | Monday    | 48.98630 |\n",
       "| East    | Monday    | 44.57143 |\n",
       "| South   | Monday    | 44.33898 |\n",
       "| West    | Monday    | 46.26087 |\n",
       "| Central | Tuesday   | 46.54545 |\n",
       "| East    | Tuesday   | 47.01370 |\n",
       "| South   | Tuesday   | 45.55932 |\n",
       "| West    | Tuesday   | 58.82353 |\n",
       "| Central | Wednesday | 42.83544 |\n",
       "| East    | Wednesday | 37.47945 |\n",
       "| South   | Wednesday | 41.45455 |\n",
       "| West    | Wednesday | 48.00000 |\n",
       "| Central | Thursday  | 43.82609 |\n",
       "| East    | Thursday  | 35.78182 |\n",
       "| South   | Thursday  | 45.84615 |\n",
       "| West    | Thursday  | 47.33333 |\n",
       "| Central | Friday    | 45.06122 |\n",
       "| East    | Friday    | 43.86207 |\n",
       "| South   | Friday    | 45.78462 |\n",
       "| West    | Friday    | 44.00000 |\n",
       "| Central | Saturday  | 52.50000 |\n",
       "| East    | Saturday  | 52.54054 |\n",
       "| South   | Saturday  | 48.32432 |\n",
       "| West    | Saturday  | 43.53488 |\n",
       "\n"
      ],
      "text/plain": [
       "   orders_mangers$Region orders_mangers$day_of_week\n",
       "1  Central               Sunday                    \n",
       "2  East                  Sunday                    \n",
       "3  South                 Sunday                    \n",
       "4  West                  Sunday                    \n",
       "5  Central               Monday                    \n",
       "6  East                  Monday                    \n",
       "7  South                 Monday                    \n",
       "8  West                  Monday                    \n",
       "9  Central               Tuesday                   \n",
       "10 East                  Tuesday                   \n",
       "11 South                 Tuesday                   \n",
       "12 West                  Tuesday                   \n",
       "13 Central               Wednesday                 \n",
       "14 East                  Wednesday                 \n",
       "15 South                 Wednesday                 \n",
       "16 West                  Wednesday                 \n",
       "17 Central               Thursday                  \n",
       "18 East                  Thursday                  \n",
       "19 South                 Thursday                  \n",
       "20 West                  Thursday                  \n",
       "21 Central               Friday                    \n",
       "22 East                  Friday                    \n",
       "23 South                 Friday                    \n",
       "24 West                  Friday                    \n",
       "25 Central               Saturday                  \n",
       "26 East                  Saturday                  \n",
       "27 South                 Saturday                  \n",
       "28 West                  Saturday                  \n",
       "   orders_mangers$orderduration\n",
       "1  45.84615                    \n",
       "2  48.42105                    \n",
       "3  54.00000                    \n",
       "4  63.18367                    \n",
       "5  48.98630                    \n",
       "6  44.57143                    \n",
       "7  44.33898                    \n",
       "8  46.26087                    \n",
       "9  46.54545                    \n",
       "10 47.01370                    \n",
       "11 45.55932                    \n",
       "12 58.82353                    \n",
       "13 42.83544                    \n",
       "14 37.47945                    \n",
       "15 41.45455                    \n",
       "16 48.00000                    \n",
       "17 43.82609                    \n",
       "18 35.78182                    \n",
       "19 45.84615                    \n",
       "20 47.33333                    \n",
       "21 45.06122                    \n",
       "22 43.86207                    \n",
       "23 45.78462                    \n",
       "24 44.00000                    \n",
       "25 52.50000                    \n",
       "26 52.54054                    \n",
       "27 48.32432                    \n",
       "28 43.53488                    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'Region', 'day_of_week', 'Customer\n",
      "Segment', 'Month'. You can override using the `.groups` argument.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 6 × 7</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Region</th><th scope=col>day_of_week</th><th scope=col>Customer Segment</th><th scope=col>Month</th><th scope=col>Manager</th><th scope=col>number_of_orders</th><th scope=col>average_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Central</td><td>Sunday</td><td>Consumer</td><td>Apr</td><td>Chris</td><td>1</td><td>96.0</td></tr>\n",
       "\t<tr><td>Central</td><td>Sunday</td><td>Consumer</td><td>Feb</td><td>Chris</td><td>5</td><td>38.4</td></tr>\n",
       "\t<tr><td>Central</td><td>Sunday</td><td>Consumer</td><td>Jun</td><td>Chris</td><td>2</td><td>96.0</td></tr>\n",
       "\t<tr><td>Central</td><td>Sunday</td><td>Consumer</td><td>Mar</td><td>Chris</td><td>5</td><td>72.0</td></tr>\n",
       "\t<tr><td>Central</td><td>Sunday</td><td>Consumer</td><td>May</td><td>Chris</td><td>2</td><td>24.0</td></tr>\n",
       "\t<tr><td>East   </td><td>Sunday</td><td>Consumer</td><td>Apr</td><td>Erin </td><td>1</td><td>24.0</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 6 × 7\n",
       "\\begin{tabular}{lllllll}\n",
       " Region & day\\_of\\_week & Customer Segment & Month & Manager & number\\_of\\_orders & average\\_duration\\\\\n",
       " <chr> & <ord> & <chr> & <chr> & <chr> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t Central & Sunday & Consumer & Apr & Chris & 1 & 96.0\\\\\n",
       "\t Central & Sunday & Consumer & Feb & Chris & 5 & 38.4\\\\\n",
       "\t Central & Sunday & Consumer & Jun & Chris & 2 & 96.0\\\\\n",
       "\t Central & Sunday & Consumer & Mar & Chris & 5 & 72.0\\\\\n",
       "\t Central & Sunday & Consumer & May & Chris & 2 & 24.0\\\\\n",
       "\t East    & Sunday & Consumer & Apr & Erin  & 1 & 24.0\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 6 × 7\n",
       "\n",
       "| Region &lt;chr&gt; | day_of_week &lt;ord&gt; | Customer Segment &lt;chr&gt; | Month &lt;chr&gt; | Manager &lt;chr&gt; | number_of_orders &lt;int&gt; | average_duration &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|\n",
       "| Central | Sunday | Consumer | Apr | Chris | 1 | 96.0 |\n",
       "| Central | Sunday | Consumer | Feb | Chris | 5 | 38.4 |\n",
       "| Central | Sunday | Consumer | Jun | Chris | 2 | 96.0 |\n",
       "| Central | Sunday | Consumer | Mar | Chris | 5 | 72.0 |\n",
       "| Central | Sunday | Consumer | May | Chris | 2 | 24.0 |\n",
       "| East    | Sunday | Consumer | Apr | Erin  | 1 | 24.0 |\n",
       "\n"
      ],
      "text/plain": [
       "  Region  day_of_week Customer Segment Month Manager number_of_orders\n",
       "1 Central Sunday      Consumer         Apr   Chris   1               \n",
       "2 Central Sunday      Consumer         Feb   Chris   5               \n",
       "3 Central Sunday      Consumer         Jun   Chris   2               \n",
       "4 Central Sunday      Consumer         Mar   Chris   5               \n",
       "5 Central Sunday      Consumer         May   Chris   2               \n",
       "6 East    Sunday      Consumer         Apr   Erin    1               \n",
       "  average_duration\n",
       "1 96.0            \n",
       "2 38.4            \n",
       "3 96.0            \n",
       "4 72.0            \n",
       "5 24.0            \n",
       "6 24.0            "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#arrange days of the week in order\n",
    "orders_mangers$day_of_week <- ordered(orders_mangers$day_of_week, levels=c(\"Sunday\", \"Monday\", \"Tuesday\", \"Wednesday\", \"Thursday\", \"Friday\", \"Saturday\"))\n",
    "aggregate(orders_mangers$orderduration ~ orders_mangers$Region + orders_mangers$day_of_week, FUN = mean)\n",
    "\n",
    "Region<- orders_mangers %>%\n",
    "  group_by(Region, day_of_week, `Customer Segment`, Month, Manager) %>%\n",
    "  summarise(number_of_orders = n (), average_duration = mean(orderduration)) %>%\n",
    "  arrange(`Customer Segment`, day_of_week)\n",
    "head(Region)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f5427007",
   "metadata": {
    "papermill": {
     "duration": 0.015201,
     "end_time": "2022-11-13T22:09:07.438152",
     "exception": false,
     "start_time": "2022-11-13T22:09:07.422951",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Visualization"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "a96c3276",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:07.472038Z",
     "iopub.status.busy": "2022-11-13T22:09:07.470332Z",
     "iopub.status.idle": "2022-11-13T22:09:08.398536Z",
     "shell.execute_reply": "2022-11-13T22:09:08.396390Z"
    },
    "papermill": {
     "duration": 0.948495,
     "end_time": "2022-11-13T22:09:08.401178",
     "exception": false,
     "start_time": "2022-11-13T22:09:07.452683",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "List of 1\n",
       " $ axis.text.x:List of 11\n",
       "  ..$ family       : NULL\n",
       "  ..$ face         : NULL\n",
       "  ..$ colour       : NULL\n",
       "  ..$ size         : NULL\n",
       "  ..$ hjust        : NULL\n",
       "  ..$ vjust        : NULL\n",
       "  ..$ angle        : num 90\n",
       "  ..$ lineheight   : NULL\n",
       "  ..$ margin       : NULL\n",
       "  ..$ debug        : NULL\n",
       "  ..$ inherit.blank: logi FALSE\n",
       "  ..- attr(*, \"class\")= chr [1:2] \"element_text\" \"element\"\n",
       " - attr(*, \"class\")= chr [1:2] \"theme\" \"gg\"\n",
       " - attr(*, \"complete\")= logi FALSE\n",
       " - attr(*, \"validate\")= logi TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdd2AT5R/H8e8laZK26W5ZZe+9957KkiFDBNnCT9nIlA0CoiLKElSmKIKDIYIy\nBREcuAWUjSyh0NKW7ja93x+BEDrStLQUjvfrr+bJ3XPf57mMT++Si6KqqgAAAODRp8vtAgAA\nAJA9CHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEAAGjEoxfsbp4a\nqCiKoigzfgpJc4F/3m2gKEql0T89gGKGB3spivJPbNID2FZmxVz9pn+LGoEWY94Kk1xY3Hpw\n4zuDuz9Rqmiwt7vRJyBf2aqNXpw477vzUfdZxlsl/BRF2XEz7j77gStWlwlQFGX99ZjMrqiZ\n3eR8IGEnetlePfzLzE23i+S4sp5G22LfRMTnVKEAkDMevWBn93q7fuFJ/GxGuqY3enrNvl/d\nyjRq3biU8yVjr37buUZw4x5D3/9099nLNz2Dgs1qzIk/vlv+2stNSubvMWVj8oOpGHhQwk/P\nOhaT9v9jN0/PPBGT+IDrAYDs8ggHu9gbX7We9X1uV/GwUhMWnolw8yh35sietcv6O1kwLnRv\n7dKttvx6zbfck+9u+TY0Nvq/C+euhUWGnf11yYRnLUrMxjk9ag5Y98AKB3KaojOoyfHjdl1K\n895fp30qIm465cEWBQDZ41ENdh5BPSx63ZFX22wLic3tWh5GanJsoqq6eVTwcP7+pCYNa9D1\n6K2EAi3Gn/pzx+COjXwNt5f3K1Zt6Lz1/+xb5O+m+211n2E7Lj6IuoGc51Nsgl5Rfpq8KY37\n1KSJOy6avOu18DU98LoAIBs8qsHOPaDj9rHVkpMiB7adk709q9aY2ARr9vaZpTriQxJz/BTo\nfweHrTwRbrRU279tTqAhjQdD/kZDv1nQUkRW9xuV9qQ8gDqzaRPJCXHWbDx1/0B20GMvOTou\n+z/AavSqO7aw180TU0+l+nRs5IX5P99KKNxxrl7u/4hdjhR/v3jcAlr3qAY7EWk4++sW/ubr\nv8wZuPVfJ4t9/2J5RVG6/B3q2KhaIxRF8QzqZrt5am1jRVEGnghZMeHpPBYfD5PB4penUecX\nfroRJ2LdsXhsvXKFLSY378AibfpNSv1moKrJXy+Z2Kh8US+z0S9PwRZdB3/5Z6ik8u936/t1\nahqcx8/k4VuqUq0hM5efdviUj+07H8POhEf9u6NHo/IWo8e6ECcfgU8+8OGrHRpXDvK1GD19\nilWsP2T6+1fib0evPW2K6Ay+IhJz4zNFUbyCh6fXyxfDPheRKpNXl3I3pLdMpRc+LuvhFnN9\n0/xLt5zXmZwY8v7U/9UqXchiMgUWKP70oMl/hSdkdh6cbCLs6PYRz7YumT/A5Gb0CSjYqH3/\nDT9eTX+KRESGB3u5uZdIvHVsdMd6Ph6ebnqDX95CTz47bO+pyOyqKoU3yvgrivLckbvf7Ik4\nO9H2SfxRJ27aG2/8MUBRFJ/CE1wvwMVlUjj56QSzXmfyqvzFuVu2Fld2k2qNWP/m2Ba1ywf4\neBqM7kGFSrfpNWLnPxG2e89vbqsoStEO21Os9fc7DRRFKTtgf3rFOO/W5vaT8dTNn9dNrljQ\n1+LuZjB5FqvcaMq7u1P05uLjLU39J1dOtsaM3X8lRftfc9aKyLPTq+Vo8a50JWL9aunLjSsW\n8zKZ8xQq12/CithkqeBp9Mo/KEVh2frCAuDRpz5qwk4OEJGAsh+rqnr1u5dFxGipdjY2yb7A\n38vri0jFUT/abh5+oZyIPH38hmMnyUnhIuIR2NV28+SaRiJStlMZESlWpUHHts0LuRtExDN/\nx8UDqio6t4p1WjzVsoFFrxORvPVetfczrIBFROYMqiYibpa8VauV8TToRERn8H5l1yXHLX7/\nVh+9oiiKkrdo+QZ1qgR6GkTEM7j53msxjmU//+vOqt5G97ylW7Z9amtobHqTsLB3FRFRFCVv\n8UqN69X0c9OLiE/JDseiE1VVPbVq3sTxo0TEzaPMxIkTp8/dmk43SYVMBhFZczXa+ZxvrJtP\nROq8ddRJnUlx558p52evqmywj4iY/Rv0zespItvDYl2ch/Q2cf2XBb4GnYj4F6/QsEnD8kV9\nRESntyw6Huak8mEFLHpj/j6lfUXE4BFUpVpZi0EnInpjnsU/hbi+d1zfQX+/10BEinfda2/5\n9U5KqDTmJ3vjwX6lRaTmq3+4XoAry6wq7S8iH4Xc3qGnN0921ylunuU3nYmwtbiym5KTIgfV\nziMiOoNvlZr1mtSvVdTPJCJ6Y/4vrseoqpoYfcxdp7h5lIu13jP2wQUsIrL08q0090WG3drY\nnowt5vdTFMUzf8kWT3VsWL2obQLbL/zLvpiLj7cUQv/pKSJ5qm6LC/9GpyiBlRenWKCFr9nN\ns1J8strO311E9oXHZXvxLna1tE9FEVF05tLV6pUt5C8iwU2HFDIZLPmedyw4e19YAGjAox3s\nVFVd1LKgiJQZsNm+QJaDnaK4TfjwiK0lNuT7omaDiOjdgpbt+9fWeP2Xd9wURVH05+Ju50hb\nsFMU/aAluxKSVVVVrfHXlw6tJyJuHuUu3Fks4uw7Jp1itFR6b89pW4s18cayYXVFxKfkYKtD\n2XmKWZq/vD7GmuxkBs59/pyImHxqbf3z9qASbp18qWl+ESnSfm2aA0xTYszftuJTvD2n9sfc\nmiJStMNeJ3Vuea6UiPiU6Hzg3O0McfGH9eU83GzvarY3WlfmIb1NjC3iLSK93z98Zynrtsl1\nRCRP9RVOKr+zg3T93t4Rf3sH3Vg2rL6ImHwahiUm32dVqcVc3ygiHoFd7C3zSvjq3YJ0iuJd\naKK9cWA+TxF550qUiwW4WKRjsDv/5QxPvc7Ns+ynJ8MztZsuf9NNRLwKd/0nzB5rbr3bv7SI\nVBp7O5u+Xs5fRCaeuJuqY65/JiIeQd3TmxlXulXvPBlFpMFLH9gfmd8u6iAi7gFPZWogqdmD\nnaqqI4K9dAbv83F3/yeMuvKOiBTr9JWqpgx22Vi8K11d/GqwiPiUeOb30NvLnNzxmpdeJyKO\nwS57X1gAaMMjH+ziIw4VMOkVxW35nXevLAe7Ao3XOi7zafU8IlJhxHeOjX3yeorIV3feNmy5\noUiHD++t0TqsuI+ItPn8rO326ob5RWTI/iv3LJWc2Duvp4gs/y/KXrZH0DMZpSz1+QIWERl9\n6KpjY2LM3wVMekVn/j0qIfUA0xQX9pWI6I35Mtqgenp9ExEJqrQpvTqTYs/6GHSKzrzD4ZCD\nqqoXvurv+Ebryjykt4lS7m4icio20d6SEPXbjBkz5s7f4qRy2w4q1HrVvc23d9Azey/dZ1Vp\nau5rVhTlx8h4VVWTrVFBbnr/soufzeOh01uuJVhVVU2MOWFQFKNXDVtXrhTgYpH2YHdh5xxv\ng87NvfTGf+6mOhd30+l1ozp16vTynsuOy4SfHSsihVvvtt08t6m1iJTovtu+wC9Tq4pI7Tf+\nTG9aXOlWvfNk9Ah8OsExhCTH+bvp9KYCmRpIao7B7ujCuiLSdc/dI+tHxlUWkdHHQtVUwS4b\ni3elq1GFvUXknXORjsvser5MimCXvS8sALThkQ92qqr+tegJEfEu2s92SCbLwa7uomOOy+zr\nVExEehy7Z8U5RX0c3zZsuWHcyZspijz/RSsRKdDoS1VVVdVazGzQuwXGpfpv+YdhFUSkyYbT\n9rLLPn/I+fCTYs/qFcXgXiIxVW/ra+YVkd6/X089wDS5fsTur/m1RSR//R3p1Rl28kUR8Sv5\nRooVk63RwSb9nRlzaR7S28T4Er4iUrTN0O2Hj8W7fNzBtoNG/JPydK1tBxVpt/s+q0rT7q7F\nRaTz/suqqkZefF1Ear/51/5nS4rI2FM3VVUN+a2fiBRu4/rDw9UibcHu9Q0zbaet89Vf4Liw\na7spDXFh/64YVdExeSRGHzPrFKOluv1x+FSAu6IYDoTHZzg/TrpV7zwZy71wOMXC5T3c9Mb8\n9zkQx2AXG7ZdRPLUeM9+b5dAD4N78Shrspoq2GVj8Rl2lRT3r5uimLwbpFgs/Nyke4Nddr6w\nANCMR/jLE3YVh27tXcQr8vyaTsuO3U8/OmMas+HhlvEUdcrrkaLFv2ozEYm5/I+IWOPOnYtL\nsibeMOuUFOouOSYikcfvfpDfr4af820l3PrBqqpmvzaGVF/aK9U8r4j8eyw8w4JtDOaSwSa9\nqlo/uZHBh6lPf3lZRPI/kT+9OqPOnBaRoPp1U6yo6Dy6Bd6enEzNQ+pNTN37QYtSvue/Wtqu\nfgWLd946zTuMmfnWwX/CXBlph3R2UOSJf+6zqjRVndxCRH557Q8Rubhlk4h07Fak3Ev1RGT3\nqjMicmLhYRFpPL2mi9OS2SJffnZGgn/jku6Gq4dfevm7u98vcWU32STFnF+78JUBPZ9uVLtq\noby+Zv8iz7991HEBg0f5maX9EqJ+nXc+UkSiLi/ZFhrrW3JqYx+jk5nJsFs730q+TvpxfSBO\nmP3aDszneeOPCVcSkkUk9vqGz2/E5G803zOdKwRlV/EZdhUfcSBRVU1+LVIW7HtPS/a+sADQ\njHS/C/ko0ZkX7Xz143LDd7/U+sfeZ3xcWUXNzi/8K6neCBSdUUQUnbuIqGqiiBjMRceO6pHm\n6vnqBNn/NqT/7dQ70r1ih6JXRCQ5weWhKYZJJXyHHg9duvZMn3GV0t2eNXLGz9dFpF3vYunV\nqbgpIpLmBSL87yTjTM1D6k1Yijy158S1I7s+/2LH7m+/O3zk2y9/+mbbWzPHPzXxs61zOzoZ\npYikfqe27SA1OeE+q0qTf/lZ3oaVIT8sEGnz3bun9W4BwwtY3AMn6ZUPz6//QubWWP31ZUXv\nPrtqoLg2LaoalakijQENvj72Vb4dz5Xu+/nbHZ8bc22X7Vo2ruwmEQn9dUXtJkPORiUGlqrR\ntG7txu2fLVm6fMXi+2vXWeC4Src5tSd0+frDV36fsqrx7zOXikijN/s6mRYXu7WxPZjT4+JA\nMjRiVLmVE38e+8O19Y3zn1wxX0TavNowp4vPsCs1OU5ElFTDUxS9483sfmEBoBW5fcgw01Kf\nirX5rE9pESnUeqkrp2LjI3+UVKdi6y//23EZ26nYASfvOYuX5qnYiafD1Xtd2NlORIp23Kuq\nqpqcEOSm1xvzOD9/aCu70ZqTzoefFHtarygG95JJqe76pF4+Eel+5Jrq2qlYVVUv7e4nIkav\nmmdiU/d321/L2oiIe2C7RIcz3SnqvHl6tIj4lX4r9eqNfUy3Z8y1eUhvEykkxVzb+cGcIDe9\noigfhcSkt5htB40+kfJU7MVd7UQkuMn27K3Kbl4pPxHZFRZV3N3gW3yOrXFAPk+dwfta5N8G\nRfEtPvP2oq4U4HKRtlOxb9x+QCa9WNpXRGpMOGC716XdpKrP5PUUkdHrjzguEHFustx72tF2\nNtbk08ianFDby6h3C7gQl+6jyPVu03wyqveezXRxIKk5nopV73zhI1/dNaqqDsznqTfmD71z\najnFqdhsLD7DrhJu/SoiJp9GKTqJ+He6OJ6KzdYXFgCaoYVTsTad3t1eydPt4tdDp3x/LfW9\n0dfu+VHwy7vS/wnwzNs4/ut7G5LfHn5IRJqOKy8iorhNKONrTQiZ/GNIisWGVSmRP3/+raGZ\n+OV1vblEn7weSbGnJ/xwzzCTYk++9OsNRWccUyYT51yCW7zbs5h3wq2fm3SafjOtH969dmhZ\n0xG7RGTAJ++lPvlr51VwtL+bLvzMpN33jiXsr7nf2n9G/T7mISbkw1KlSlWu+5K9Re+e54ne\nkxaV8lNVdXdGP12/acyX9zaoi0ccFpHqYypk796x6zimnIjM3vzG2dikYs+1sTUOaFMwOSly\n8q5JSapadlTX24u6UkAmiyzgbftyqP61XQtNOuW3+e02XY0R13aTao34JCTGYCq84NmajstE\nnjyeYoy2s7HxEQdnfjPup1sJ+RosKmTSSzpc79YVLj3eXOAe2KVnHo/rv46/GPLVyqvReWq9\n4Z/Wozwbi3elKzdLta6BHvERB9+/eMtxmV/mfXJPXznz0AXwyMvtZJlp6R2xU1X13Gd97OOy\nH7E7vrSeiPiWfv5qwu3vCIQd21zB002y74idouiHvrff1rs1MezdkQ1FxD2oddSdiwuEHJks\nIkZL5Y9/vP39teSkyA/GNBURv9IjbC2u/2N9dmMPETH51tl+/PaXNhKjzoxtXkBECrdddad/\nl47Yqaoa/d+XZTzdRCSgcvtVO36w1xx58a9lk57zNuhEpNbQdfbl06tzW5/SIuJbutvhi7e/\noRl2fEfDAHfb7rDNmCvzkOYmrAnXAt30iqKfuuXulcyuH91W2t1NUQxOPuFu30GD39ljO5qU\nnBi+ckwzETFaqtkeElmuyomYkI9FxOhrFJHxp2/vput/PG9vXHft7rUDXSnAxSJTXMdOVdWv\nhlQQkYDK42371YXdZC3ublAUZeXRu4/8nz59s4yHm4gEN/nKcZhnP28tIm7ebiIy4vfrTqfE\n1W5dOejl2kDSkOKInaqqv06rJiJ1+pcQkV7f3f166b1H7LKxeJe6OrOxl4j4lul9PCLhdsvu\nBT4GvYhY8g+2r5i9LywAtEFTwU5VkydUCUwR7OIjDtmuSGcOLN+2c7dmtSu66xSjpXIlT7ds\nCXYGU+H6edxFxOQbXKtWRR+jXkQM5qJrj9/zVdnN41vZCitauXaLZg1KBJpFxORTbcediwNn\n5vU3eUGvSra8UrBM9ca1ytsuuutTsuPfMbevBuJ6sFNVNerCrjYVA2zl6U3ehYqXLJg3QKco\nIqLojF0mrnY8wZZenUlx57uX9bVVFVy6WpWS+RRFMfnWXtivlOOMZTgP6W3i+5lP2FbMU7JK\n85YtalUuaauw5cSdToZ2+1ux/eqLiNEnuGbtSn4mvYjo3QLe/O7u9WKyXJUTTXxNIqLTW0Lu\n/EeRFHvWqFMkrbNsrhTgyjKpg11S/MXaXkYR6f3pWdW13XR4WhMR0ek9Gz7xVPdOrauUzqvT\nW56dMFFE9Mb8/V4car8cWmL0UbNOERGjpWqG3612sVsXg52Lj7cUUge76GtrbbOqM/hdib87\nhhSnYrOxeBe7Wt63sojo3Lwq1m5cqXheEWk/e5mIeBUa59hztr6wANACjQU7NfrqJttlPO3B\nTlXVm8e39W9fP4/37f/mLYUafXzsZtdAj2wJdibvBolRp+e/1Kdy0Xzubm5+eYu07zPm0J2j\nCI5++2Jpt1a1g/wsBjdz3uKVe46cc8zh2hCZfP217l07u12Div5e7gazV+FydV+Y9u5lh7el\nTAU7VVXV5IR9Hy7s37lZsUL5PI16D2//EpUb9Bsx68A/oSkWdFKnNf6/ZZMG1SgV7Gk0+AQF\nt+k95rewuB9HVUzxRut8Hpxs4tBHr3doVD3Ix1OvM3j5F6j/RI+lW35zPixbsPs1KuHgu+Pr\nlS3kaTR4BxZo0e2Fr46lvEJNlqtKz66ni4uId6Hxjo1DC1hEpNjTu1Ivn2EBriyTOtipqnph\nx4si4uZZ8WRMourSbrJ+uXBCvQqF3Y16i1+e+u2e2/JnqKqqS/o28TEbPAMKRSbd/VjXvLL+\nIlJm4AEXpsSlbl0Mdq4NJKXUwU5V1Y4B7iKSp/q7jo2pLneSjcW7Nr3JidsWjW/doIqPySO4\ndL2pqw7Hhu0QEd8Sb6foPFtfWAA88hRVzcbfRX/YJUWHnrscU7x0oXQ/CgRtGR7steRK1K9R\nCdU83XK7Fm16qajPW/9GLrsc9UIBz9yuRTvCrl6Jtap5CwQ7fuQv/PQYv1ILinXce3ZL89wr\nDcDDTjtfnnCFwTOgFKkOyCYxIRve+jfSI6gHqS57rWlcsWDBgrPPRjg2fj/7SxGpPbpsLhUF\n4NHweAU7ANkiOjIuKfb6a51GiUit6dNyuxyt6fJGOxFZ0HLA9l/OxiRao29e3LxoeOd1p0y+\njZfUz5fb1QF4qHHVSgCZNrFc0JIrUSLiHtTo40FlcrscrSnS8YPVI68PXLS5fc1N9kbP4Nor\nvt4SmJkrMAN4DBHsoGU95y+tGpNYOP3rqyFraj7ZsMIP/xWp1nLy27Pzp/VbfLg/Sr+3v247\naP9n2w+c/S/c6O1frkajTu2aeDn9TQsAEJHH68sTAAAAGsa/2gAAABpBsAMAANAIgh0AAIBG\nEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMepV+eiI6OvnnzZm5XAWcKFiyYZnto\naGhsbOwDLgauS2/Hicjly5e5jPnDLL19Fx8ff/369QdcDDLFyfMOyLJHKdglJibGxMTkdhXI\nivj4ePbdIyomJoZg9yiyWq086YDHEKdiAQAANIJgBwAAoBEEOwAAAI0g2AEAAGgEwQ4AAEAj\nCHYAAAAaQbADAADQCIIdAACARhDsslOyNXLH2gVD+nZv80TLNu2fHjJ+zt6/w+z3dmnVcs7F\nWxl20qxZs2X/RedkmXDmx6FdmqUlMa1r9LKzHh5/fPXBmP/1ade6Zet2Hfq+OGHd10dzuyKI\niBx/u3+Llm3Crcn2lm0DOzVv3vJkrNXe8tPEHi2f7Jmkijg8p55q2eL1y1GOfwjPOMAFj9Iv\nTzzkVGv0gqF991wN6v7cgH5FA6JDrx7Zu3Hu8D7RqzZ0KGxxvZ8OHTqU92C/5Caz/xOvTm2T\notGgpLEkO+shce6zSaOX/dy615CeQ8qY1ajTvx5YMX/ksajl87qWyu3SHneFOldL3rr5s5DY\n5/N7ioiaHLf2YpSqWtceDZtTK8i2zPYTEZaCw2xPMefPKZ5xQIZ4hmSb4yte+vpfvyWfLi1r\ncbO1NHuijcdznVZM29xhTW9XerDGRenNltGjR+dkmciY3i1v1apVnS/jZGdZrapen1YMRI5Z\n/sEvwU+8On5ADdvNClVrVfQ8878VM6TrRy6sbbUm6/WcvcgZnsHPmfVbf/7m2vM9i4tIzLX1\nYVbDoNJen687KrWaiYg1/tKhiPjyg6vYlnf+ApiZl0d2Kx5TPOqziZo4d/OZ0s9Ptac6ERHF\n8NyUET1be9gbrEk33ps2rH2blk916fn62m9tjU+1bLHpWsg700d16/mqiLRu0dx+ruHqT19M\nfKHfU21adezac/KC9dFWfrIzlznZWV1atfzw/O8v9+3cqlWLDl17vbHuYK5W+niJTlYTwq46\nthTt+NLsGcNt5//ibx57a+rILu3btGzV+tkBIz48cMG2TJdWLVf+/NWgLu1atWzZpdeL2/4J\nP7FzeZ8uT7Vq0/HFqUsiHM4eIst0Bv8uAe5Xvv7ddvPi1u88grq1HFg24tRq2+tZzH+fWFW1\ndZ1A2wKOz6nU7Pemt0+F3YrHHsEue8Td3HMl3tqsSb4U7b7lnujRo4v95k+Txkrdnu+sXD3u\n2UpfrZn+Ycjtn+j+dv5ES90eby8Z47huUvSfAyctlNpdX1v4zoyRz5z8etXEzedzeBwQEbEm\nhhy91/F/rtjvTXNn2WwePbNY93GrP1w7rkfFHaumfXCNDwM9IEO6VQ35af4zL054/6Mtv/x9\nPj5Z9OZSdevWtb3AvT984rc3ioybs2D54vldaySvfuXF/xJuf8Dr06mfdBj/5rpVSxp7/Ldw\n+MBp+9QJbyxfOL3fhe83zzpw1ckW4brGLfPFXPvEFuN27bka3L5pQMW+avylz0NjReTy10f1\n5kJP+psz1aeTfSrsVjzeOBWbPazxF0SksEnvfDH/6pMGt60hIoW7vlxo5d5joXGSx0NEbuYf\n3qdNtRQLx986EmNN7tCpZXl/s5Qu9eYs/0tmn5wpH/eIC9s5fPhOxxb3gM47Phth+zvNnWVj\naTh1cLvqIlKk68slVu07djVO8nrmdLUQkfJ9X19Vcd/OA4d//mrd+hUL9Wa/KvWa9vzfoBp5\n3UUkX/te41p3rutrEpHCwc8t+ezlU3FJ+Y16ESk1bNZTdQqJSO9RZbcOPzJv5uBiZr0U79wj\naOW+P8OleYHcHZc2BLerY12/ftfNuCc8rn4RFve/1gX0Hu5P+pn2bL/UvW+pn78N8S48IoOX\nzlSc7FNht+LxRrDLHnpTfhG5GG+t43VPe7I14t8LYb6Fi/jpdSJS6Kli9rt8HD79EfxkkdR9\nugd1bVV2x7RnelauU7NSxYo16zSsX8w/h+qHI8+8vb/cMCC9e9PcWTYF2hW1/+2j1wlnzh+g\nYjWav1CjuYjEhF76+YfvNn20bkLfI+9vWVPMrO/SrcPvh7/dcP7if//9d+av7x3X8q94+58l\ng8Wkc8tTzHw7GfjoFVVl/2UPj7zPWvQbdv4ZVidwrRgLPB3gLiJPNcs/dvse6V140/W4IgMq\nZLZPJ/tU2K14vHEqNnuYfFr6G/R796U8yH/z6JsDBgw4feeL/R6ebqlWFRHx9E6jXaf3mbTs\n05VvTWhQNujf33aNHdR9wns/Z2/ZyII0d5aN0Z3/lHJBfMSBqVOnXoi/8ywLKNi4XY833p9r\njb+06lyENTHk5d7dZ36wN1rxrlyv5fCZU9LvidfDHKHoLT3yelzadPrkur99SvSzfbOo8NMN\nYkM3nby67WaStV3NwEx1mJl9KuxWPG54H8oeit5jUpuCE1bPPNb6vQrextutqnXDgt/c/Z+o\nZUk3CjgRdvTT9QcTh73Ys0jFOl1Ezn8xbNDyd2VwzeysG3j0GYwFvj90yHzk+uSGdz/kao0L\nF5H83saoC4t+uhb/2a65/nqdiMTd3JNrhT7G6rULXrt+04cSVnJKJVuLR75eAfqP39ywxWAu\n3sLXlKneoi68wz4F0kOwyzbVRixo+mff0b1eeKZPtyql8idG/Hfwi3U7LycNXvJi1jo0+sV8\n/smaWxb/jnXLKDGXN2+5YCnUPXtrRppsX55I0ehXulywMbMfBMKDoHcvNatL+akzBpl69q1f\nqYTFqNy8cnrLipXeJToMLmBJuFFWTT7wyd4/OlfLd+P8n+uXrRCRf6+EW6C6SmsAACAASURB\nVL3z5nbhj5F8LRslvr/imMjCSgG2FkVn7l/M+41tl/0rTMvsxYHcvNPdpzxFAYJdttEZ/Cet\nWFNu5Xs7Nq/4JCRC5+5TonzNSYv/16Ksb9Y6tAT3fW1IxLub3xuxNtLim6d09XZvjX42e2tG\nmlJ/eUJE2ny4bXxwJi40jQep/tBF84qu3fjlF69+ejU2SeeXt1DNVgNfHtjZoIghqMfr/7u6\naMXMzTH6EmWr95u5xn/ugLXD+tfZti23q36MuAd28TesjrE0rOx5902nWq8SMv3nYt3LZrY3\nj/T3aWl3oh0ed4/SJ0nDw8NDQkJyuwo4U7p06TTbr1y5EhUV9YCLgevS23EicurUqUfoVeIx\nlN6+i4mJuXTp0gMuBpni5HkHZBmfKgUAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDY\nAQAAaATBDgAAQCMepWDHxbQeXew74AHjSQc8nh6lX55wd3f39/dP715FUQICAkQkMjIyISEh\nUz37+voaDIbY2Njo6OhMrejp6enu7p6UlBQeHp6pFY1Go7e3t4iEhoZm6vX30RqmnZeXl8mU\n7s9BmkwmLy8vyfxs6HQ620MiC7Ph5+en1+uzMBsWi8VsNmdhNh6tYdr5+/s7qdY2G4mJiRER\nEZnq1j4bN27cyNSK9tmIiIhITEzM1Lq22YiJiYmJicnUio/WMG2MRqOTF0wR8ff31+l0WZgN\n29M5C7NhNpstFotkfjb0er2fn59kaTbuc5gJCQmRkZGZWtE2TFVVQ0NDM7UikC0epSN2AAAA\ncIJgBwAAoBEEOwAAAI0g2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJg\nBwAAoBEEOwAAAI0g2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAA\noBEEOwAAAI0g2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEE\nOwAAAI0g2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCENuFwAAafN6Y5bjzVvjpuVWJUhB2X/I\n8eb1imVyqxIAKXDEDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAA\njSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDY\nAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAA\naATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATB\nDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAA\nQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0wpDbBQDIfgsPBjnenNQ6JrcqAR4TKZ50szol\n51YleMxxxA4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEA\nAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEAAGgE\nwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBGG3C4gE3Q6nZeXV4aLubu7\nm0ymTPWs1+tFxGg06nSZS7oGg8G2uiuFObJvyGKxZGpFu4dwmNHR0endZTQanVSb5dlQFMX2\nRxZmw7bRLM+Gi4/G1FuUBztMG+fDVFXVybrOq83yU8D2aBQR11e0LWmfDQ8Pj+Tk5Ext1DYJ\nJpPJvnUXPchh2rg4zMTERCc9ON+obRNGozFrs+HIxdHl9Gw4WTcLw3RzcxMRg8GQ2Wrt23W+\nYlxcXBa6BTL0KAU7EXHlKa2qamaf+aqqKoqStRWztkX765Sqqs7fVp1s+uEfpmMPToZpn437\nmcYHPBtyH9U+yGG6sqLzR6DzLebobKSIorYlHVfMidlw7sHvdOfDvJ99Z+8hy7ORqQ2Jw/82\nOTQbTuTK656Lzx0gez1KwS45OdnJMSFFUdzd3UUkLi4uISEhUz27ubnpdLrExEQn/afJ09PT\nYDA4LyxNRqPRaDSKSHR0dKae3o/WMO0SExOdVGsymWyzERMTk6nZ0Ol0ZrNZsjQbti1mYTYs\nFkvWZiNXhmmT4TA9PDzSu8t5tbbZsFqtWZ4NJyumONxhW9JxNpwcr0qT7bBNQkJCTExMplZU\nFEWv1+fQMNPk+jDTOyykqqrzjZpMJkVREhMTMzsbqY/+ujg6s9lsOwyW2dnQ6/VZ3un3M8ys\n7XSbDOcfyCF8xg4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g\n2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEA\nAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANMKQ2wXAJQsPBqVoGdciIlcqAQAA\nDy2O2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g\n2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEA\nAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEAAGgE\nwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEAAGgEwQ4A\nAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEAAGgEwQ4AAEAj\nCHYAAAAaQbADAADQCIIdAACARhhyu4DHy8KDQY43X+msPuAClP2HHG9er1jmARcAwIkULxEi\nMrZ5eK5U8sjxemOW481b46blViVA7uKIHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABo\nBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEO\nAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABA\nIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2\nAAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAA\nGkGwAwAA0AjDA97emhf7mmct7xHkfqchef+Gd7Z9++vFW/qyFWv3G96/uMeDLgkAAEAbHuQR\nO/XUwRWbr4Qnqaq96eznU97a+H3dpwdNH9XHcmbv5NHvJj/AggAAALTkAR0eC/n+7QmLvwuN\nSrinVU1YsPHvEs/O79ayhIiUfF3p1uf1jy736x3s+WCqAgAA0JIHdMTOt0K3ybPmzX9tgmNj\nfMS3F+KsrVoF226afBtWsxh/2X/1wZQEAACgMQ/oiJ3RO7ikt1gTzI6NCdF/ikh5Dzd7SzkP\nw9d/Rkivu8vs27cvOfn26dk8efIUK1YsvU0oimL7w83Nzf63i2zL6/V6k8mUqRX1er2I6HS6\nzK5oZzKZVIdz067LwjB1upQ53sWyXRxmQkJCenc5n1uDwWCvJ1OzkYs7XVGUzK5oH6bRaMzU\nivczTBvnw3Q+586rzfJTwM3t9hPf9RVtSzrORuqHtHO2dQ0GwwN7pmdhmKl7cDJMq9XqZF3n\nG83yUyDLrySOz/SsbdH1nW7fxH0OM8sv7xm+RCQmJmahWyBDuflNheT4aBEJMNx9lga66ZOi\n4hyXmTRpUlJSku3vLl26vPzyyxl26+7unuEyaTIajZl9x7XR6XReXl5Z26jFYsnaiq4Pc+pm\nhyjg953jXZkqO8Nh3rx5M727TCaT/TXdCRdn454RiYjIK52zEo7FYaf/MDXlXXVfcbbRVzqr\nWd7pWV4xhx7b9v+d0mSxWDJMk3q9PidmI97pkh4eHlnbYpaf6Tk0TOecDzMuLi69uxRFcWWj\nJpPJxeCSXa8kri+fqWe680eL68NMwWAw5NBOv3XrVta6BZzLzcud6IzuInIz6e6bSmiiVe+e\nlRdcAAAA5OYROzfPSiLfnohNKmTS21pOxSb5NPR1XOaHH36w/x0XF3fjxo30elMUJSAgQEQi\nIyOdnBNMk6+vr8FgiI2NjY6OztSKnp6e7u7uSUlJ4eHhmVrRLjQ0NGunYrMwzNSczKej+x9m\nTEyMk2pNJpPtX9sHORt+fn56vd5hpwemWMD55GRhNrI8TJ1O5+/vL/ex0zN8bAcGphy+XVhY\nmJNqLRaL2WxOTEyMiIjIVEn22XAyzykOd9iWtM9GREREZk9m2XZ6TExMTExMplbM0WE6l+Ew\nzWZzmu2qqjrfqL+/v06ny8JspObi6Mxms+2ofE7MRpqPFrmPYXp5eZlMpoSEhMjIyCyUqqpq\naGhohpvIQs+Ac7l5xM7s26yAUb/zuxDbzcTo33+6lVC9Zb5cLAkAAODRlau/PKEYx3Yte3rN\njD2/nPjv7NFV0970yN+iT8EsfuYMAADgMZfLP/NQ8pnZQ+Lf3vDWtNA4pUSVJrNnDeI3zgAA\nALLmgQY7vbHgF198cU+Tom/Vd0yrvg+yCgAAAG3iABkAAIBGEOwAAAA0gmAHAACgEQQ7AAAA\njSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDY\nAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAA\naATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATB\nDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAA\nQCMIdgAAABpBsAMAANAIQ24XkM2U/Yccb16vWCa3KsHDaeHBIMebk1rH5FYl9+P0wkDHmyVH\n3sitSu5Himer8IQFgPvGETsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ\n7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAA\nADQiU8Eu+b+zp2x/xYUcmT5u6IjJ83afvZUTZQEAACCzDC4ulxDxfc9G7b84ky8h+piadLNj\n+Sa7QmNFZNmCd9ec+KtXYUtOFgkAAICMuXrEbkOnbpuPJ/R9abiIhPwyaldo7NAdJ2+eO1jd\n7crYZz7JyQoBAADgEleD3dyfQop02Pj+Ky+IyJ+zvzX5NFrYppRv0YYLnysZ+teCnKwQAAAA\nLnE12F2ITwqsV8j299qfrgdUfkkvIiKexT2TYs/kTG0AAADIBFeDXQNv0+Xtv4tIfPjuj6/H\nVH+5uq39562X3DzK5lR1AAAAcJmrX56Y2a90w7f7P/X8L4Yf1ykG/7mN8yfFnX7/zTdHHrqa\nt/mbOVoiAAAAXOFqsKv7+r4Zl1vPXb0oUXHvv+C7Sp5uUZe3Dpmy3FKw0YefPp2jJQIAAMAV\nrp6K1RkCpm08EnUrJCz61ooR1UTE7Ndmy1eHLp0/0MTPlJMVAgCATEhOCv14/rgn6pYP8rUY\nTJ75S1TuPnTGL9fjcruuB0RNjt741svN61Tw9/Y0evgULlHhmRen7L8Qldt1PSAuBrvk+Pj4\nRFUMHoE+pturGDzKd2xd30ev5FxxAAAgUxJv/dqlQome4+b/HZev47MDBvXsUC4w9tN3ZtYr\nWvnzf7Mh3IT8OOWpp546HJlw/13lBDU5ZkTDEj1emvdPYpFeg0ZOnziqbf1i36yc17J02SV/\nhOZ2dVmR2Ql36VSsar3l6+FXZ/2p/c+UuI/aAABATlITxzV5cuuZhAkf/jCvVx178+mv5lRs\nP3VAs1Fdzq64zy3EXP3+yy/39U+03mc/OeT8ph5Lvr9Wb+qXh2e1szcueO2bWqWeHN+i5wvX\ndxoeteNRmZ1wl47YKXqfMeX8z646ch+FAQCAnHVl/4sLf7tRZ9o+x1QnIiXbTN7QunDkuZVv\nX869M5JqQnySmo39JSeFpw47xxf8LCILxrVybPQo0Gxlv1Kxobs+uxGbjQWIZPug1LjE5Pvs\nwtXP2E09uKPyxeFDF20NjX9IQzoAAI+5z4Zu1hm8PxxfK/Vdrd5bvmLFijLJIiLjC3l7Fxrv\neO/vM2soinL+zlt8cuKNpRMHVC6Rz+zm5h1QqMUzI364EScic4v5Fuu0T0S6BHrYe7j24ye9\n2tQL8rUYPX1K12o5a81+x543lAv0KTLtyHsvFfSxuBv1vnmKPzfpg2SRn9dMqFY0r7vJUqx8\nnRkfH7cvH/Xvt6N6PFk4yNfk6V+2WvOZ7+5wTDqrywT4lXgrPvyn55qWt5j8o6wpQ5XZzygi\nn/0elqK9+uwvjx492srhWwHON/Tfd2ufadu4oK9HUMEKQ+bvOL+1haIoV++kruwdlK23/755\np3oRP3ej3jMguE7rvnsuRac34c65+q3Y9t0nJ+ctvGxU52WjzXnzB5nd7kmE586dc7EfAACQ\nM9RXz0R45htZwqxPfZ9ncOuBA13t6O22VcfuvdrsmcHdni8UeeHn5e8vbXnwws3LW55du6ng\n3jF9Z/0+5ZMvmuYpIyLXf55fuuGEWFPJnn2HFveKPbh13fT+zQ6e2b/7lSb23mJCPmo47Gav\nUVPrFDJ98c6rH73a98TZlcf2xrz00pQ+1nML5yye1btmy3bhDb2N0Ve2VC3X/YIS3Kv/oJKB\n+j/2fzrjhXZbDq/+bW0/e2/JSWF9q7YObdR77qIR7rqUJ1YrTu4qO958u0XFi4OHdH2qTfOm\ntQNMehEx+hWr4Hd3MecbCvtzYdlmL1nz1u/3wgTTzVPrJnXYUcE7xYayd1AJkd/VavNt8e5D\n3qpf9safX7/+7rqO1W9EhmxPPeEZcjXYmc1mkQLt2hVwcXkAAPAgWePOX02wBvrUu89+kmJP\njtt7pVDrz/Z+fPtyZk97Neiw+tCmG7HPNG6u3PQXkWrNW7YIcBdRh7WbHmsss/f0z43yeYhI\n8uxp42uXWzC39cFxEY28jbc7jDs7du/lN5oXEJG+vSq4B7T/bcvpA1fPNvA1iUiHEn+U7Llv\n8aVbDcsHzH/i+QtKyQMXfq0XYBYRkXlbxlTrvKD/nOmdJxf3sfV26+Kc8EU/7x5WPc3i89af\nf3ileciMRZ8sfeWTpa/o9F5VGjZt2bJVt+f61ip6N5w539DYtlPiPWr9cfKbMh4GEXl5cL08\ntYannKVsHVRc+DcFZ+z/drotDQ+pGVqi8yc79oXHt0o54Rlz9VTsNqdc7AQAAOQQVU0UEVFc\nfWdPj6JzNyoS/vemny/esrXUe/3Q9evXnwlKGSxib2z6JCSmzKDVtlQnIjpD4OT1/dTkuOk7\nL9kXc/MoawtAImL2b+el1wVWfNsWgEQkqH4jEYlNTE6KOfbK8bCyL669E4BERNpOWygiG5ed\ndKjP9MH/qjqpv96A2b9diPj3r8OrF87u1b5WyG8735g6ok7xgNYjV9kWcL6huLBtqy9HlR+1\nzJbqRCSwxtAphb1SbCV7B6XTe2x+uZH9ZpXuRUTkljUrn7fL3O4/sXfjjPGjBvTrs+ZaTFzY\nngNHQ7KwSQAAkO0M7iW8Dbr48O/TvFe1Rm7fvn33/osZ9qM3Fdr5am/14se1i/gWq1y/1+CX\n3t2wMyytrwjE3fxaRIr3KebYaCnUR0T+23XV3qIzBNxTpyKmoLunRRWd2+3ewr6yqupfb9ZW\nHJh8m4hIxF8R9uWNlqp53DJML0rhivX6jZj8wZa9l8Ijj2xf0SSvceeigf12XspwQ7E3NolI\nie6FHbtrUScoxQayd1AGj4r5jXcHpdzHd3ddPRUror7Tv+HQNYdtNzymLmoXtahZtS8bP794\nz7tDH7kvDwMAoDn6cYW9p19471Tsq6XcU76/37q0oH37mcWe3ne2aaHUa6rJ9+S2xuPXhvR7\necuWL/d/+92h3WvWv//WS6Prbjn6TSuHw0629VJ3pSgGEVGz8F1RnVFEKo1fZT8SZmfyuXuI\nTtF5pteBNf5C1x4jCzSds3RkeYeCTDXbDtx6ONqn+MhdM/6QJws635CavCp1z1lPWi4OSnHL\nYv+pN+jicmc+enromsMthr79x6nLtha/Uq/PHVzvwPvDOiz/J7uqAQAAWdbrtebJSZE9Zx9O\nfdfByR+JSNPx9sRzzzUurv1892ukiVEnfvzxx0veJXsMHrv8wy1/nQs7vmNWzNUfRk75LUWf\nZr8nReTcR+cdG6MurRORvC3yZrZ4s39bvaIkhZd50kGLxkXCw8OVoh6u9KA35ju8Y9tHb69L\nfZfRp7iIGP3NGW7I7NdCRM5uuufQ5qEfb2R2ONk1qMxyNdjNHrPbv9zEPUtGVi55O3IaPMpO\nXH5oZqWAAzNeyYnKAABAphR9+oOeJXx+mddqxIr9jkfMjm+e1eXjM+6BbRfXyiMiHnpdXNj2\nG3cu3hEX+sOQfZftC0dfW1a3bt3u8+7GuKI1a4lIUnSSvUVVRUTcA7s8HeTxz7sDv7/ze2Vq\nUtirvVYoOtO09mkcF3TOYC45o7z/qXV9916NsTd+PLTjs88+e8HFtKIYl7QrHHF+Xq+3991z\nwFBNWDFklIh0n10lww155OnbMdD92PyhZ2Nvjzfsr/enno2QLMmGQdlG4PIBUFdPxX52I7bc\nSz1Tt3fuU3zmRL48AQBA7lN0nit/+iKkarvFg5p9urBRu0bVfQzxJ3/5Zvv3Jw3uJVYcWu+p\nU0SkQ+/SM2cfqdK8z/jnmide/WfNgoXXAo1y6XaO8Sk6s2XQe3tfadz2bP+6FYonh5/fsmKV\n3i1gxtxqIuLm5SYi7y1eEV+uds8edZZtm7qrweSmJWr0Hdi5mCX2wKbVO4/fbD55bwvfrPyO\n/Kgd77xfulebEhU79+hQo5T/0X0b1+0+Wanfut55XD249fT6vT1r1lg/usXelY3aNKwa5G2O\nCfvvp2+2HTkTUbX/e69XC3RlQyt2zi1bd2yVsq0G9X3CFH7qg/c3PFU7cMuP1z1SXV3lAQwq\nxYRnuLyrwa6wSX/rVGTq9pvHIvQmroECAMBDwezf+OtTx1fOe3Xdpq8/++Cn6CRDnoIlu784\nY+z0cTXz3P5aa7WZ+5fEPL/4873jXlyfqKrBDfrseuN6w/pf2e5V9D5f/LVnwsjpW7/6aPdH\n0e5++as36vnZ9Nc6FbSISJ46r7WvfmLPnJf+qjC1Z486eepMPHmg8EszF25atSAiwVCkfM2Z\nq6dN69c0a8VbCnf/80+fCRNe3bpp5ZYEY/HS5ae//9WUga1d70FvLvbhH+c7vD13zefbtm9Y\nHXYrweKXt0L1J9+aPXJkj/oubiiw+qhTvxYcMOL1dW++4law2sgNv9V494mtendvfVaC3X0O\nKsWEZ7i8q8FuUp08/T7s88Orx+oG3v3gZMyVff03ng2s/p6LnQAAgJymNxUaPP2dwdPTXUDR\neQx9c/3QNyU5PvLS9aTCBf3l3pN97nnrL9qwe1Fa67p5Vtn2yz2/SpC/Qc+Pd6VxTs+mx983\netzbEnbvz556FZqsqpPtN31KP7l885PL0+mt/4nQ/ult6Q5F7/3MmHnPjJnnfLH0N6T+8suv\nRp8nN+/ram9aMT7K7NPcfjN7B5W6t6Id99p3R+oJd87VE7xPb3yvsHKhSbGq/xs7S0SObVj1\nyrh+5Us9eSE5/+JPu7u+PQAA8JDQmbxtqQ4OlKHNGzRsPsN+Oynm+PR/I/I2GJJ7JWWCq0fs\n3IPa/vbHFy/8b8yKBTNEZP+UMQcUfYVm3Tcvead9/nS/eAwAAPBoWT6lSbXxCxr2c/9fm2rK\nrQsbFsy6avXa8F7T3K7LJa5fx068S7VZv6/Nyuvnjp25kqR3L1iqQsEsfTQSAADgoVV13M4v\nTeNmr/hk+CevJ5n8q9bvsGHt/G75cuTqJNkuE8HOxj2oWM2gYhkvBwAA8GhqN+KNdiPeyO0q\nssJZsNu6dauLvXTs2DE7igEAAEDWOQt2nTp1crEX1fUL5wEAACBnOAt2+/fvt/+dnBgytVe/\nI7EFBgwf3LxuRV993Klj3y9/ffF/hbru37Egx8sEAABARpwFuyZNmtj//uaFikdiSn377491\n/G9/YaJV286Dh/Zvmr9a18m9/175RM6Wmb6FB4Puue33nZOFvd6YlaLl1rhp97/R6U8lZqGT\nh99DNcx79l3dB77FnNno6YWBjjdLjszibxFmeYsPZqOO7nlQOX225ooUO3123cWON6e1T3iw\n5TzCUsxk1l5pU5jt993s347ab16vWOb++0wtxeve1HbxObEVIOe4eh278etPlXhumT3V2Rg8\nyr31fOkzG8fmQGEAAADIHFeD3enYJJ0xrYV1Yo2/lJ0VAQAAIEtcvdxJ9yCPtR9MOP/63qIm\nvb3RGn9h0spTHnky/HkPAACQg27dupVDPXt5eeVQz8gJrga7yct7vtfxvSoV28yc9mLdimV9\nlMiTx358Z+a0PTfjBq2ZmKMlAgCADBlnT854oUxKmDIn2/tEjnI12BXu8O6+tw3dx787us9u\ne6PeGDTk7b1LOxTOmdoAAACQCS4Gu+T4+MSGI5ZeGTBu55e7j565kqgzB5es1LLtE4Utmf7t\nCgAAAOQEl2KZar3l6+FXZ/2p/c+UaP/soPY5XRQAAAAyz6VvxSp60GOQMQAAIABJREFUnzHl\n/M+uOpLT1QAAACDLXL3cydSDOypfHD500dbQeGuOFgQAAICscfUTcu27T07OW3jZqM7LRpvz\n5g8yu92TCM+dO5cDtQEAACATXA12ZrNZpEC7dgVytBoAAABkmavBbtu2bTlaBwAAeBQlJ4Wu\nnjP5/Q3bj567qpr8K9VtNXLWm8/WyZvbdT2mMnexkpjLv3+2dffxs1dirIb8xSs80alrjUKW\nHKoMAAA85FRrxP/qlfvofMGxk1+ZUSF/xJXzu9bPf65hmYi/zr9Q1je3q3scZSLYfT6tR685\nn8Qnq/aWyaNe6Db5o42zuuRAYQAA4GH3/aTma//Od+jS97V8TbaWZ/r09yqZZ/LTS144PsWV\nHpKsqkGv3Hch1sRkvZur3whNq4yYcIOHFpKoq3Nw7tNeXV/ZmKfJgI27f7wcEnrz+pUj+z4b\n2DTvJ6907b3pfE5WCAAAHkpqfO/Ff1af87E91YmIKMbJ6xdN6O9tu5UUc2Ji7yeD/S1GT5+q\nTbtt/CPM1l7AZJh7/ED7cnmMbvqA4BLPv7LZ1n7+6+XtapX39zQFBhfv+MK8SKtq25CiKHMu\n3v093AImw8BTN21/TNm9qlo+L5PBLV/JOu/9dP3ntePK5vczWQLrdB51IzHZtnxywpVXh3at\nUqqg2RJQqUm3NYev2tr93fSLL1wc061ZcLE+OTlTD46rwW7+qC8swf3+2fN+95a1CwT5+wbm\nr9msy3u7/x5Q0GvL8DdztEQAAPAQiglZfzY2qXvXIinag+r0GT9uhIiIJA+tUe+dg8nzVm/9\nbsfHrX3/eq5OlYORCbbFFjftVnHMymOn/l4xtsHKaU/P+jcyIfJg5fZDpfXoHd/+8MmSsb+s\nmdJ28fEMy1jQ+c0XVu05efRQV6+zQxpVenqDunrnTwc2zvh72+Ien9++asfkJtXfOKCMX7ju\n8N5NL9STgY1LrjgVYbvrs+fb+rQde+D797JpVnKZq6diN1yPKT1lpIfunoOlis5j5LAya6d+\nLLI4B2oDAAAPr8SYv0WkrHu6WSLy3Mz3/rm59tKW3sGeIlKrYaNv/YNGvH70t9nVRcS308fz\nnm8hIuVGf1Bl2sbv/42KU7++ZU3+35BedfN7SI1qez7Pf8ojIMMyqr+96X9ty4jIlHdqv9Pg\n6+2fz6vkYZDKpcYXmvLxwevSo0TU5bde+/H6N2EfNvE1iUj1Ok0StwbMGnLw+d3tRSSk2MJp\n/Ztnz4w8BFw9YmfR6eKuxaVuj7sWp+j5/gQAAI8dg7m4iJyITUrRnpx049ixYyGJySGH9rt5\nlO0T7GlrV/ReY0r6XPz8mO1miecr2lcJNOhEFUvB0c/Vyv900WItOvWe/sbyG0XqPdUsX4Zl\n5G0QaPvDzdesNxWu5HE7aAYYdGqyKiLh/3ytqslN/czKHaP/Cbt19oRtsZL9ymd5Bh5Crga7\nUaV8Tn8w5Oeb8Y6NCRG/Dltx0qfkyBwoDAAAPNQ88vTKb9Rv2HA+RfvVw4MrVqz4e1Siqqoi\n95zr0+sVVb39E1Ymr5SH+nSGwHU/Xfpr3+oOtQr+ve+DVlULtpm4O81Nxzl8lTNFH6mb3Hzc\ndQbfW1H3uHzUdrJYvP2NTkf5iHE12PX/bJYp9o8GRau8OPm1Dzd+/tnGD1+bMqRKkfq/xBhn\nfto/R0sEAAAPIUXv9UH/0r9N63441OGcnpr4xv/2W/L3fsLPlKdh48SYvz/6L/r2PdaoBSfD\nC3aomHZ3ItcOLRg19vVyDdqOnPzqJ18d/mVJ7X1Lx9vvDbvzTYiYkE9vJiW7XqdP8UGqNeLd\nK4met3lM7/jk4A/PZmqwjwpXP2PnW2bI8d2G54ZMWj534vI7jf5lGi9duo4L1QAA8Hhqvmhf\n12/LNy9Ve8yU0U2rFY8PO7t52StrTiW89v2bIuJTbObA0kuHNOymXzKxjE/CZ2+O+D4uz57J\nldLrzZTn1sI3Z4T55hvSroYScWbJ0hM+ZcaIiCimut6mDYPm9nxniDHs+JzBL+iUTFwhxezf\n7q1WwS837GBZ9HK90n67V45deOjyjk+L3u/gH0qZuI5dwWaD9/896NI/vxw7cyVeTAWKl69e\nrtB9XDIGAP7P3n0HNlH+cRz/XkaTLjopG2RvkCFDQChTBBmyBRFkCMgQGQKyqSiggoCg+BMV\nQUDEvQEFWYIgyJCNyJJZaEtX1v3+CNbSEZJ0cr5ff+Uu9zz3vedJrp8mlwTAvU3nU3jl/kOL\npkxcvnjia+eu6QPCazRovXL7vF4PFBQREf3SvdtDnx41utfD15L1les9vHLXW02DTJn1Flx+\n2revXnt+8fMPTY8OKlSiTvOBm5eOc971xQ+Leg6c3aTqK4l2R6P+i3tcGZ9ZJxka8dXehJGD\nZw/rfinZVKlW5Ac/f9YqJNMy7mme/fKEiFK8Ut3ilTK+r2ml8luOnshySZnS6/XBwZ69Ophm\ne3smG+j1ehExmUxGozF3CksRFBTkXUN/f38/Pz/v2qbwqOy7HmZcXFxmd5nNZhfVKv/84+Vi\nNNLPXWpej0ZuTvpdD/OuHWZ2mHdt6OIwg4ODHQ5X72i4fojqdDoRMRgMXj8F0hSTetHu8t6A\ngABVzewim4w5qzWbzT4+GV9S4/ph5sVhpky61+Pj+jAtFouLXbve6V1Hw33pd5Th3Dn3mOH2\nWd9pZo+WLB6m0Wj0rtq7jn98fLwX3eZPOp+io+a8P2pOxvcaA6rMXbVhbrr1F5Pv+MjFxhuJ\nzhsPP7fo4ecy+KqNgvUHbTo4SHUkXo5WC4f7iTyTvp+wyuutif82GXoiemhKkcaIiUs/m7g0\nbbfRVtfP+3uPp8HOlfN/ncnG3tJzOBxWq9WjJklJd3ySN/1fNucGfn5+iqLY7fbk5OR0m9yd\nqqppduS+5ORkT/84OVmtVpst7QeRPOVR2Xc9TBf5wGazubjXYDA4s7WL/l2HL4vFYrd78+S0\n2Wz//Gn07MPdDofD00nP6DDv2GlmHSqKYjAY5I7DdKthCheHmZSUpKqqi795rjs3mUw6nc6L\n0XBnX8aM7s1oNNzlfKanGo20XD/MsmnSPeP6MF2PgOud+vv7ux4N96XfUYZzZzQaTSbTXQvz\nbqcZ7lGyfJhZeWx7fcKEC4rOt3B4XheRv2VnsMtpXuQnN4Od2WzW6XQ2m827J3AWn/neBTuL\nxZITp2MXsnKYrs+qJpPJbDaLy5jr+i+u1Wr1bjTsdvs/B+VZsPPi0ZjRYbqVz3Q6nb+/v9xx\nmJ4FOxeH6VwfGBiYWVvX/3sYDAaj0ZibwS5lNCwWi6f/6fn6+oqIi2d6tge7lEnPSrDz9DCd\n7voQTYm5WZ87N4OdiOR+sMviYaZ67ngmK//wA1nBNXIAAAAaQbADAADQCIIdAACARhDsAAAA\nNIJgBwAAoBH30qdiAQBAZiyTX8zrEpD3eMUOAABAI3jFDgAALZi7sUC29zm+ZWy294kc5eoV\nu+Y1qw3Y+rfzduXKlWeezfQHo5ymL1iYbXUBAADAQ65esbt48viJ2W9vm9rGqJOjR48e+HXX\nrr8z/nr6+vXri8gTTw/N8F4AAADkAlfBbunwxs3nTmvy3TTn4vqurdZnsqV3P4oFAACAbOQq\n2EXO+fF0t5/3nr5kV9WePXu2fn35U4X8cq0yAAAAeOQuH54oXfeh0nVFRD7++OM23bv3KOyf\nG0UBAADAc+5+KnbdunUiknBh/8efb/jj9MUEu6FImaqtO3WtUyIgJ8sDAACAuzz4upP1U3v2\nfvGjZMe/l9O98OyQbi+sWjuzSw4UBgAAAM+4+wXFf67r3XXW2oimT63dsOvCles3rl789ceP\nBzQr9NGsrk98ciYnKwQAAPmXw3b9nRlDGlQuEWA2+gcVatCmz+pdl/O6qH/dOHn05N+JeV1F\n7nH3FbtXnv0ioFi/oxvf9tMpzjV1I7vUadrWUarwRyNelccW5ViFAAAgn1LtMU83rLzqTPGx\nL8yaXrVIzMUzP3z4Sp/GFWMOnhlSKTivqxMRWdP2wUUtv/5jacO8LiSXuBvs1lxNqDB5VEqq\nc1J0fqOGV3x/ymoRgh0AAP85Oyc1f/9I4e3ndz4QbHKu6dG3f2C5iBceWzzkj8nu9GBLuGnw\n+ycCqjaHYvD0107v6OE/z93RC9Dpki4npV+fdDlJ0fP5CQAA/nvU5CcWHaj94uqUVCciovi8\n8OHC5/vf/n0zW8KxCU+0KRYa4OMfdH+zbmt/j3auDzXqF509N6ZbZLHSfRMuv6PT++3/33Ml\ngvwNBnPxKo1eXvdHSn/u9CAiiVd2DO38UOHgAIPJr3S1JrPXHRWREcUCh528ceTNB/0LdhMR\nh+XiS890rVm+uDkgrHrTbu/tuJQbo5S73A12z5YPOrli2J4byalXWmJ+G/6/40HlRuVAYQAA\nIF9LuPLh6URb966l0qwvWL/v+HEjRUTE8Uydhku2Ol5+9/Nt36x+OPhgn/o1t8ZanJt9PPCR\noEfGbtm5TERETW48cv3A+au2//T5yCaGST1qzj1w3aMeJjRqt/5ilXe+2LRn24ZnWzmm9Kr3\nZ5L91ZOXXysbXHHApqt/rRSRF5rWnrdFGf/6Bzs2fTKkoQx4qNz/TsTkwkDlJnffiu3/8cxp\nVUc0uq/mU8P7N6pRziyJpw7ueG/x8uMJPgvX9c/REv8jTr4ennqx3KhreVVJhqJCtkVt25Wy\neLVaxTwsxgWPhjEqZFvUrt+ct3dKuIstgaiQbVHbd6cs5s5TICpkW9S+Q7m8U2S7fH56zwpr\nwhERqeSbaZaI/XPGsqM33j//2RPF/EXkgcZNfg4tOHLuoX1RtUXkSunXp/ZvLiIJl0VVHQ+9\nuXFa3/Ii0rBJm5vbwl596rPxewa42YOI3Dd44jv9RrQr6CsilcpOenZB+33xltJhfmZF0Rl9\n/fxMty7Mn7Pr6k/RK5sGm0Skdv2m1s/DZg7bOnBD+xwep1zlbrALrjjsjw2GPsMmvTl7wpv/\nrAyt+NAbb3yQT66OBAAAuclgLiMixxJtj9y53mG7duTY5YIVKsdu32z0q9S32O1fN1D0gWPK\nBT29/rBE1RaRcv2qpG41tH2JlNu9B5efP32VyIArbvfw7HNDf/pi/dxDx86cOb1/29fpq715\n9DtVdTQLMadeGWw5JvKfDHYiUjxy8OYjg84f3Xv41MVkMRUtU6V25RKeXuEIAAC0wS+idxGf\n4WvWnBk9plrq9Zd2DK7W9NPvo5NKq6rIHR+71OsVVbU7bxcI9Ul9V+rtdD46VbXI7R+jv3sP\n9uRzHSpX2x3UeHC3Vk3aP/jUqMcfqJk2rhmDfHWG4Jib51N3p+h8RFs8DWZK8Up127Tr0KFd\nm7rpUl3TSuWzrS4AAJC/KfrAFf0r7Jvafcf1VB+vVK3znt4cUOSJ1iGmiMYPWROOrPo7/vY9\n9luvHb9ZvEO1DHtb9v2FlNsfv3UisEQvEXGzhxtHx3z7V9Kh3V++OOnZXp3bVil8M33/QWUG\nqfaYty5a/W/zm9axzeCVp70//nzJg1fs7ur8X2eysTcAAJDPNV/4Y9efqzQvX2/M5NHNapVJ\njj796dJZ752wzNn5qogElZ4xoMIbwxp30y+eUDHI8vGrI3cmRWx8oXqGXW0e2Pol2/yWFQK3\nrZw97cCN6bu7u9+DKewB1bHulTWbh0eWvnD455fHvCAif5y60jGslF6RW38ev3SpfOHC7ea3\nKjaxcYeAhRMbVgjZ8M7Y17df+GbdfTk7QLkuO4MdAAD4T9H5FF65/9CiKROXL5742rlr+oDw\nGg1ar9w+r9cDBUVERL907/bQp0eN7vXwtWR95XoPr9z1VtMgU4ZdfbNh+tQhw2ceu1GqWu2Z\nq/ZNrutBD4HFx30398zIST0Wxxpq1msxff3hwk9Un9G4Wtvo6IdGd0wYO6hi/Z4xf60Y8dXe\nhJGDZw/rfinZVKlW5Ac/f9YqJONi7l0EOwAA4D2dT9FRc94fNSfje40BVeau2jA33fpoqz3N\nmvBavX488ITXPbQZ98axcW+kLD68++wy562h714b+u7tUo0RE5d+NnFp5gdz7+PDDwAAABpB\nsAMAAHlLbzab774V3ECwAwAAecmvUL/ExEQXX3QM9xHsAAAANIJgBwAAoBEEOwAAAI1wM9g5\nkpOTrWrOlgIAAICscOtCRdUeF+wXUv/DE5t7lHWx2fQFC7OpKgAA4JnxLWPzugTkPbeCnaIP\nGlM5dMXyX8VlsHvi6aHZVBUAAPBMgb0Hsr3P2Do1sr1P5Ch3r7GbsvWbGudGPLPw8+vJab8q\nGgAAAPmBu98Z0777C45CJZc+23npaHOhIgXNxjsS4Z9//pkDtQEAAMAD7gY7s9ksUrRdu6I5\nWg0AAAC85m6w+/LLL3O0DgAAAGQR32MHAACgEZ79LtuxTWtXf7/z7JXoh+a82dO4Y9fFGk2r\nReRQZQAAAPCI+8FOXdK/8TPv7XAu+E1Z2O7WwshaXz00cNHGt54xKDlUHgAAANzl7luxp1Y9\n9sx7O1o8s+D3Execa0LKz509uOGWt4d3ePNojpUHAAAAd7kb7KLGbAitPGHj4lE1yt3+YKzB\nr9KEN7fPqB62ZfqsHCsPAADkX7NLBxeq9VWalV/VKhRUampuluGwXV85Z3TT+8sF+5v8gwvW\naPLoi+9ttKX6KdTY0ysbli3sF9oo/aKiKGP/jMnNanOUu8Hu42uJZfs9nn59575lkq7zgVkA\nAJA37EmnetWu8FTUlzU6jVjx8dcfr3ijS23z3EFtqj423fJPtvtl8MSTgcMO/b4+/eKQIUMa\nBvrkVfHZzt1r7Eqa9HEnMvgRuhuHY/QmvtwOAAB4wW516I1Z+4qOFV2bf/ZnyU0ndzQp5Otc\n07ZD96E9l5RtMqLta102jakuIgl/JwXXaFamRGHnBqkXly5dmqXd5zPujuWk+hEnV/b95VpS\n6pUJF3/sv/Z0eK3nc6AwAABwz7MlHJvwRJtioQE+/kH3N+u29vdo5/qiJsPkDctrFQ40GYyF\ny9VftvvqnvfHVSoSYgoIr9/52WtWh3Mzh+XiS890rVm+uDkgrHrTbu/tuJSmf0vsjsHfnHv4\n3U9SUp1TRMNh63qV3TbjKYfI/LIhnf+4dnJNU1NgHUm36KfXOd+Ktd46PP7xthWKBfsFF2rR\nc+zBW1Y3a8hX3A12j61dVlI527T0/U+PnSkih9csnzWuX5Xybc46iixa1z0nKwQAAPmXNf7I\n9jsdibf+c6fjmToNl2x1vPzu59u+Wf1w8ME+9WtujbU473ut86tDlm88fmh718DTw5pUf2yN\n+u73u7esnX7ky0U919/+qdIXmtaet0UZ//oHOzZ9MqShDHio3P9O3HE93M3jr9pUdXrb4ukL\nqz+5tSVuz9fRSSMOXVhdKaxM1+9uXN4uImkWb1Mtg2o1Wn4kZM67X2/65M2I399pVn+imzXk\nK+6+Fetb8JF9v38x5Okx/3ttuohsnjxmi6KvGtn908VL2hfxz8ECAQBAPnbjxPjGjdOuLFBS\nRCT2zxnLjt54//xnTxTzF5EHGjf5ObTgyLmH9kXVFpHaCz55+pGKIjJ5Sb0ljb77ev3L1f0M\nUqP8+BKTV2+9Kj3L3rowf86uqz9Fr2wabBKR2vWbWj8Pmzls68AN7VN2dOvPaEXR1fA3pi/M\nJ6imiPyRYH00NNCsU3QGXz8/s4gYfP1SLzpFHxm34rRlc/R7DwX5iEiNTdfa9/7wb4sj8Orr\nd60hX/HgC4oLlG/74Y9t37n65+FTF2163+LlqxYPNuVcZQAAIP+LuP/Ly/vuSDlf1SrUO1pE\n5Mr2zUa/Sn2L3X4BSNEHjikX9PT6wxJVW0QKNQp3rjcGm/WmktX9bmeSMINOdagicvPod6rq\naBZiTt15sOWYyL+7878vRFUdh+KtNdNlO+utP0Skkm8GmS+981/sMIe0dqY6EfEvOuinnwaJ\nyHk3ashXPPnlCUfiN+8vXP3lpqN/XrIZ/EtVrNmue/+BHerz5cQAACA9VVVF7ogJer2iqvaM\nts3g2jBjkK/OEBxz83zqLhTdHZ9gDan4nF75bPqGC592ui9N870vf2sq0ODRMLO4wZHsUHQZ\nbOlODfmKu9fY2S3nn2pwX7unJqz6fMuFmxbrjXPfrV42uGODyu1fiLOrd28PAAD+YyIaP2RN\nOLLq73jnomq/9drxm8U7VHOzeVCZQao95q2LVv/b/KZ1bDN45enU2/gUaLy0dfFvnuy+887P\nd17bs+yx9080nf0/N4NOsfY1kqK/2fPPByYSLn9QpEiR724ku1NDvuJusNsyovW7v15pNnLR\nnzdvXfzz6KGT52/Fnlk8qtmxr2e3nL43R0sEAAD3oqDSMwZUCB7WuNuab3/et2Pj5O71diZF\nLHyhupvNzaHt5rcqNqVxh7fWfntg3y+vDm/y+vYLT3a9L81m/T/d+Gjxk83K3j969tJvN27e\n+O1ns8c8Xr7h0BJd5n41rKqb+wq/f9GjhRztWg7+6qfdv23/dljr0UkBHR4OMblZQ/7h7lux\nL6w5HVJx8k+vD/+3pX/JZxb8dOWHsLlvTJJZP+RMeQAA4N6lX7p3e+jTo0b3evhasr5yvYdX\n7nqraZAHF+iP+GpvwsjBs4d1v5RsqlQr8oOfP2sVkra5wbfCR/uPfTAv6n9r5i2POq8LKlap\ncrXxb2+Y0K+5+1eLKfqAtQd/HDto0qjHW121B9VpOXDz0pnu15B/uBvs/kiwlnu8S/r1XZ4s\nEzV5V7aWBAAA7g2T/rw5Kd3K9vsup3wdiDGgytxVG+am2+Zisi3ldljl9dbEf+8aeiJ66D+3\ndcaIiUs/m3i3rxDWGQs+Oen1Jye9ntkGnQ5f7ZTJYoL99nfmmULrLVq/cVEGnbtVQz7h7lux\nHcN8r+36K/36czuvmQo0ydaSAAAA4A13g13U2wMuft/75a+OpF55/Nt5Pb86W2PkzBwoDAAA\nAJ5x9VbsiBEjUi82K66b+GiVt2o3eaBy+QJK3Imje3/ec1rvU6hDyA6R2jlcJwAAAO7CVbB7\n8803025tMJw/sPP8gZ0pi+K4Pm3M6Ekjh6drDQAAgFzlKthZrVYX9wIAACBfcfcaOwAAAORz\nHvykWOLfR7fv/eN6fAYv4/Xo0SP7SgIAAIA33A12Z9aPq9PrtWirI8N7CXYAAOSt2Do18roE\n5D13g92Ip9+I1ZeYtvilyColDe5/kTMAAMgVh+cGZnufVcfHZXufyFHuBrsfbybXnPH59ME1\nc7QaAAAAeM3dD080KuBjjjDnaCkAAADICndfsZs/s2WdcU/t6bixboRvjhaUm6IaLJKtt38U\nLipkW+q7rlar6EWHJ18PT7Om3Khr3tXm9U5zYY+5wKODigrZFvXbQeftnZJ2CnJazk3661sL\nplkzrkVMhlvmvjS1TW1vcbFx4LxUP07TwMs9pn62Oo1tftPLvnJemvGZ1VnNq0okzfiLxI2b\nmleVuCNbHi25JrNqo0K2RW3ZkbKY++cl/Je5G+yqDv9s0OKCDUuWa9G2WYlwvzT3vv3229ld\nGAAAADzjbrDbNqHJ4mM3RG5s+vaT9B+eINgBAADkOXevsRu2eE9Aia47z1y3JiWml6MlAgAA\nwB1uvWKnOuIPJdiavPVSg1KhOV0QAAAAvOPWK3aKYihl0t/YfzWnqwEAAPeWze/ObFm3UgE/\nH78CYZXrt5313vbs6jnUqB9w4kbqG2kMKhKo/EOn0wcVvK/72EXXMvkxhbtSFGXsn/nlM2pe\nc+8aO8X01aInag1rt+Chn0c9Wo3vJwYAACJycMGjzcds6Dfp1Qmv1fWz39z/08cvDHrolxt7\nvh5dK3cKKNJ4/uqoWiKi2q1nf98wavyzDS8UP7G6sxddDRkypGGgT3YXmNvc/fDEkPdPFDPE\nje5QfUJwoYIBxjT3njt3LrsLAwAA+d34WRvL9/1q+ayWzsUHI9s0KvB73Re6yuhTqbayWx16\no7tX9XvGHF6zadOmtxeatyz5+2dtPp4u4k2wW7p0aZo1Nrtq0N9jL2e5O8zh4eH3t2nfqVOn\nts0a1k0nR0sEAAD5U4xNTbx0JvWaKkPf+mzdQue7oUVNhskbltcqHGgyGAuXq79s99U974+r\nVCTEFBBev/OzzvdME6/sGNr5ocLBAQaTX+lqTWavO5qVenR6xeBbXkRETVYU5cVz//4kWlGT\nwfl+7pnv3mz3QJVQf1N4sTIdh7wca7/9TZN+ep3zrdiiJsPsP7a0rxzhY9SHFSs7cNanKZ04\nLBdfeqZrzfLFzQFh1Zt2e2/HJef6zPrMbH3OcfcVu08//fTuGwEAgP+S155r1nD6oJL11vfu\n3L5F88hGD1Tx9a/Vrt2/78O+1vnV+R9tbHGfYUHvdsOaVC/avM/a73cr575v3XFUz/UjNvYs\nO6FRu/WhPd79Yl4xX9uWD8c/16ter0dvlDbr3Swg6fqh7dt9REQctrO//zBi1bkBK751sb0l\ndmuN9s80mfjmN2/WTTi7s2+vkY9UenTbs1XTbLaoWbcnZ78zL7LC0S9efOy5x0r2jZlaqoCI\nvNC09ltxTRa9/kHlMN3OTxcPeKic7ciFvoUOZNinm/vKXu4Gu5gYV5cTBgUFZUcxAADgXtJg\n2ncHG615f90XP7z74suThhv9Ix5q333CnJdalgpwblB7wSdPP1JRRCYvqbek0Xdfr3+5up9B\napQfX2Ly6q1XpWfZ+wZPfKffiHYFfUWkUtlJzy5ovy/eUtrs7s9c/b11ZOPG/y4Glevcomqw\ni+2Tor+LszueHta7QRE/qVNr4/oiJ/zC0m8W3Gn1ywNbiEjl0StqTl27869bUqrArQvz5+y6\n+lP0yqbBJhGpXb+p9fOwmcO2dn97Z4Z9urmv7OVusAsOdjVMqpqXP5gDAADySrWWPee17Cki\ncRePb/jm80WzZz1S+Yffrh2u5mcQkUKNbv+imjHYrDeVrO4gFANfAAAgAElEQVR3O3iEGXSq\nQxWRZ58b+tMX6+ceOnbmzOn92772dO+lO/14+tNI5+2E6AsfzOzUpU71bVdPNwjIePuA4qP7\nPPDuY/eVbtq2deNGjVq17fRotcLpNys7sFrK7XCDTlQRkZtHv1NVR7MQc+otgy3HMuvTzX1l\nL3evsZuexrTJg594LMJHbzCVjFq+MkdLBAAA+VDitXWdO3c+mmhzLgYWrfDYwHHf7fvKmnh8\nysHrGbVImzrsyefaly/eY+bqGH1Yk/Z9Fq5blZV6/EKLDZr3pVguTvvlSvp7kxyqiOgM4R/s\nPn/wx3c7PFD8yI8rWt1fvO2EDek3NgVm8MqXMchXZwiOu3WHC4dGZtanm/vKXu6+Yjdt2rT0\nKxfM29WiQtMFr+99oX/vbK0KAADkdwZzua8//9zv+/OrOt2XstIWf1lEyoSa3OnhxtEx3/6V\n9HfSl4WMOhFJuJKlYCci9uTzdlX19b19iV70P99pl3Bl3Q2bQ0Qub3/tpU8tC16ZULnRI6NE\n/njzwVrjxsvL+9zpPKjMINX+xVsXrWPKO9/GVMe2bHKpxzuvVvk6wz6zsi+vuRvsMuRbqP7b\nM++v9uz8LTEvNQ1yawoBAIA2GANqfTyqQedutfwmTO3QuGawr3Lp1P6lkyaH1RzyUjlXV3Cl\nMIU9oDrWvbJm8/DI0hcO//zymBdE5I9TVzqGlXLz0xP/fnhCJPHGhQ/njDT6VXqlbkFRDA0K\nmNYMmv34kmE+0X+8OHiITlFExBQR9/qr06ODCw9rV0eJObX4jWNBFce4ebzm0HbzWxWb2LhD\nwMKJDSuEbHhn7OvbL3yz7j7TtYz7zMq+vJalYCcifsX9FEVf0S/tN9sBAADN6zB/2zdVZ7yy\n7K2+88/EWXWFS1Vs1Sfq/aiRPu59+1tg8XHfzT0zclKPxbGGmvVaTF9/uPAT1Wc0rtY2OrpO\nui/NzVDqD0/ofHwr1n3089+WlTMbROSLHxb1HDi7SdVXEu2ORv0X97gyXkSCy0/79tVrzy9+\n/qHp0UGFStRpPnDz0nHuH++Ir/YmjBw8e1j3S8mmSrUiP/j5s1YhJgnJuM8s7ss7WQp2DuvV\n+VP2GwNqFc6hrx0EAAD5mq7NwBltBs7I8L6LybaU22GV11sT/71r6InooSIi0mbcG8fGvZGy\n/uHdZ5f9czvaak9zI423/457O/PKCtYftOngINWReDlaLRzuJ/LM7V08t+jh5xal3z7B7khf\ntohsvPFv3TpjxMSln01M+03GmfaZ2fqc426wa9iwYbp1jr9PHPjrelLdyYuztyYAAIBsoeh8\nC4fndRG5KCuv2OlKVG/eqUWfuS/Uz7ZyAAAA4C13g93OnTtztA4AAABkEdfGAQAAaIRnb8VG\nnz99Nd6afn3FihWzqR4AAAB4yd1gl3RtY5fGPb45Fp3hvfykGAAAQJ5zN9gt6/jEtyfi2g+d\n8HCN+wzufTkNAAAAcpO7wS7q16tlenzy5ZIOOVoNAAAAvOZWsFPtcVet9uo9auR0NQAAwDtV\nx8fldQnIe24FO0Uf0CzYfPq9PdLxvhyuBwAAeCwwMDCvS0C+4ObXnShrvppl+bZPv1nvX463\n3X1zAAAA5Dp3r7HrOuHzQkWM70/tt2LagNDChX31d3yA4ty5czlQGwAAADzgbrALDw8PD29Z\n6v4cLQYAAADeczfYffrppzlaBwAAALKInxQDAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAA\nAI0g2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARrj7k2I55PLOFwa9dDD1mqfe/ahT\nmDmv6gEAALh35XGwu7n/pm/Yo6MGVU1ZUyrQmIf1AAAA3LvyONhd+SM2uMqDDz5Y9e6bAgAA\nwKU8vsZuf2xySK1ge2LspSs31bwtBQAA4B6Xx6/Y7btlVbct7L7oqFVVDf4F2zw+6ulHa6Te\nYMWKFap6O/KVLVu2Vq1aHvXv6+vrXWEeNdTpdJltf9d+fH19Uw7Qo4Y+Pj56vd6Lhl5vfNeG\nycnJmW1vNBozrNbJYLj9ODSbM768Mnfm0SNeTHrWD9PrSTcYDC6qzfAR6P4G4nI0POJRJyaT\nKWVI3aQoiogYjcasV+tpDzk0Pna7PbONFUXJcKcpK52j4eKxkZXCMtwgZb5y4dGSXYep1+uz\n/TTi7NBisWRvt4BTXgY7u+XCLb3xvvAH56yaGazG7fpm+by3J5vKr+hXKThlmyVLlthsNuft\nLl26NG7cWESSnx/5by8NXO3C398/9WKmueNuDV3T6XSZbe+in6iQbVGbt6cs7pRG7hcQFbIt\n6pe9XjRMbeemRgc33bGmwSw3m2a8FxfnKaPR6Dyn3zF3IqY5C+/arXO9+3PnTodZ5/6kT/lU\nSb04q7PqxaNF7jbpaQY2zfPCaDQajRlfverv7+9wOFzs19fX1/mn0QW9Xu+ieK+fd64bZpaP\n5c6HWVSDRanvigrZlnpRbXbHSObQKSL19r9MuWO9+0+6DHealJR01+1TH1RUg0Xywx0DMquz\n6uPjk2Fhrh9UrgtzsVMXTwHJpkeLR4fpWnY9tlNzduj6eQd4LS+Dnd6n2EcfffTPkqlJj/HH\nv9v74/8O9Xulcco2BQoUSAl2ZrP5rq8cpOHp9l43/Gf7tH//cq2ArDf0qK0X45Nhk5SVzuiQ\nahslw808lZXRcLtzjyc9Tw7TRbWum7tZVbYMtUed5P4es9IwWyY9J06A+baw7O0kK4eZ7acR\nZ4c5enbCf1kevxWbRq1Cvhujr6Ze88MPP6TcTkpKun79uogEut2hc/sUXjd0zWaz3bx5U0RE\nwrPST9429Kitp3tJTEx0vp6XZgqc/ZhMpsDAQBGJjo7+52QXnmYz9+cuK3W6LyuT7uIwvSvm\nruOTmJgYHx+ffo8pOw0PT7s+xY0bN+76F8hqtcbExGR2bw49YWNjY61Wa27u0UVDT7b3ftIz\n3DizVy5VVXXnhJmYmJiQkJBhYVkZDddtXRx1Ds2di8N0vReLxRIbG5vZvfntvARI3n544ubx\nNwYMfOaSJeXlaMeWiwnBVSrkYUkAAAD3rrwMdgXK9AhLuPz89Ld+PXTsxOH9axaM/zk+cPBA\ngh0AAIA38vKtWJ0hfNYbM959c9XCqMlJ+sAy5auNnz+9VgBfUAwAAOCNPL7GzhRSdcjE2UPy\ntggAAABNyOMvKAYAAEB2IdgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSC\nYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcA\nAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKAR\nBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsA\nAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARhrwu4N4Q\nOG/mHcsN/r0ZFbItatsu5+2dEp5TO22Q+XauG3rY1h07NzU6uemONeVGXfOin6gGi2Trotu3\nQ7bdsYvsG8mcGA2vJz0qZFvU5u0pi9n7gHG1012/ZXGPd3kKbN99u/9NjdI0dP+xkeZx5bph\nVMi2qH2HMtxpDu3RRUNn28yesNk16V5X60JUyLao3fuytzDxpLaTr9+x0xx8tHh1mFEh26J2\n/JqyeLVaRffbAnmFV+wAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMA\nANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAI\ngh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0A\nAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBG\nEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwA\nAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMMeV1ADtq5qdHJTf8ulht1zbuGIlIrC2UE\nzpv570KDLHSU8+4oVfJ7tZp0Dz1akF2Y9Lzl5nkv/d8F9/+mALmJV+wAAAA0gmAHAACgEQQ7\nAAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAA\njSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDY\nAQAAaATBDgAAQCMIdgAAABphyOsCPKDX68PCwkTE4lXzsLAw7xpmhdc7zf2GWeGcl5s3b2a2\nga+vb2BgoOT63OXhaHjXMPcPMywszOFwuNggJCREUZSs9H+vTHoWhzH3qxWR5OTkzDZQFCWv\nTph3bZvyHDmZTTu95yZdROLi4rzdM+DKvRTsHA5HbGysiJi9ah4bG+tdw6zweqe53zArnPPi\nIh9YLJaEhATJ9bnLw9HwrmHuH6az2qCgoMw2uHXrlqqqWen/Xpn0LA5j7lcrIg6Hw2zOuANV\nVfPqhHnXtqmeI0Fp1v9HJl1E7Ha7t3sGXLmXgp2qqlarVbw9T1mt1tz/G+/1TnO/YVY458UF\nu92eJ3OXP0fDRcPcP8y7Vmu1WrMS7O6hp0AWhzH3q3Vzm3w4GpkV/9+ZdG/3Cdwd19gBAABo\nBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEO\nAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABA\nIwh2AAAAGkGwAwAA0AhDXhcAaFDgvJn/LjTIuzqAfCYqZFvU5u0pizslPA+LATSJV+wAAAA0\ngmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAH\nAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACg\nEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7\nAAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAA\njSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDY\nAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAA\naATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATB\nDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAA\nQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMI\ndgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAA\nABpBsAMAANAIQ14X4Ni8ZsmXP/92Lk5fqVq9fiP6l/HL85IAAADuSXn8it3p9ZPnr93Z4LFB\n057tG3Bq0wuj33LkbUEAAAD3rDwNdqrltbVHyvaa2a1lw6p1moyaOzz+7+9XXYjPy5IAAADu\nWXkZ7JJjfj6bZG/Vqphz0RTcuFaAz97Nl/KwJAAAgHtXXl7QZok/ICJV/Iwpayr7Gb47ECO9\n/91myZIldrv99r2VKzdq1Mjr3fn7+3vdNvd3mvsNs8K508TExMw2MBqNRqMxs3vd7D83G2bF\nvTXp/v7+qqq62MDPz8/rzuWeGo0sDmOeNLTZbJltoChKnhxRVtreQw2zvtPk5GSvdw24kJfB\nzpEcLyJhhn9fNQw36m23klJvs2LFipQzV5cuXVq2bCki3j0bfH19c/9p5PVOc79hVvj6+opI\nUlJSZhsYjUaDwSC5PndMujttHQ5Xl7aazWZFUbLS/70yGlkcxtyvVlw+6VK2+Y+Mxr11mOIy\nlANZobj+Zz1HxZ1/pfewn99Y92kJk965Zu3Ant8Ej33/lbop2/Tr1y/lFbtmzZo9+eSTLjp0\nRge73e7pQen1ekVRHA6H679w6el0Op1Op6pqSpFuUhRFr9eLV8/tfHuYcXFxISEhGd5lsVh0\nukzf99fkaKSXbw/T4XD4+Phkdq/rarU3GhnKt4dpsVgye0n1rnt09u/FaDiH0YvRcA6jO7Wl\nkTKMXkx6vj3M+Pj4oKAgj3oG3JGXr9gZ/auL/Hws0ZYS7E4k2oIaB6fe5r333ku5nZSUdPPm\nzcx6UxQlLCxMROLj4y0Wi0eVBAcHGwyG5OTk+HjPPrrh7+/v6+trt9tdFJYhHx+fAgUKiEhM\nTIxH56l76zBTJCUluajWZDIFBgaK56Oh0+lCQ0PFq9EICQnR6/VejEZAQIDZbPZiNPLzYYaH\nh2d2l+tqnaNhs9liYmI8KixlNDwdxpTRuHXrltVq9aitczSSkpISEhI8apifDzOzYKeqqutq\nQ0NDdTqdF6MRGBhoMpm8GA2z2RwQECCej4Zer3f+0+jFpGfxMK1Wa2xsrEcNnYepqqrXJ0wg\nK/LywxPm4MiiPvrvt11xLlrj9++Os9RuWTgPSwIAALh35enXnSg+Y7tWOvne9I17j/19+tDy\nqa/6FWnRt3hAXpYEAABwz8rjn3ko1yNqWPKCNfOnXk9SytZsGjVzEL9xBgAA4J28/v0uRd/q\nyTGtXH0iAgAAAG7hBTIAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAA\nADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSC\nYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcA\nAKARBDsAAACNINgBAABohHaCXUJCQmRkZGRk5LZt2zxtO3jw4MjIyMWLF3vacMmSJZGRkYMG\nDfK04Y4dO5zV3rp1y6OGKYe5fft2T3c6aNCgyMjIJUuWeNrQ68N005YtW5wHlZyc7FHDmzdv\nOhvu2rXL0532798/MjLyrbfe8rThggULIiMjhw4d6mnDn376yVmtxWLxqGFWDrNfv36RkZHL\nli3ztKGbXn311cjIyJEjR3racMOGDc6DcjgcHjW8evWqs+G+ffs83Wnv3r0jIyPfe+89TxvO\nmzcvMjLy2Wef9bRhymGqqupRwytXrjgb7t+/39Oduql79+6RkZErV670tOGLL74YGRk5duxY\nTxt+8803kZGRLVu29LThxYsXnaNx6NAhT9t269YtMjJy1apVnjZ0Hub48eM9bfj1119HRka2\nbt3a04ZAtjDkdQEeMJvNZrM5s3sTEhLi4uJExNfXNzw83KOerVZrXFycTqfztKFOp4uLi0tO\nTva0oZ+fn7Pa0NDQwMBA9xvGx8d7fZgWiyUuLk5RFE8bKooSFxdnsVg8bZiiQIECLu719fVN\nGQ0XU5yeXq93NvT39/e0tqSkpLi4OL1e792kW61WTxumHGZYWJiPj4+nexSvDjM5Odm7w0wR\nFhbmeoO4uDibzeZp/2az2XlQ4eHhOp0H/2E6HI4sTrrBYPBiNLyb9NSHqSiK+w1tNpuzYUBA\ngHdzZzQaXTdMTEzMymh4Mek+Pj5xcXF3LSw9Z6kiEhgY6F1bL54CqqrGxcXZ7XbvDtPHx8fr\nJx2QFdp5xQ4AAOA/jmAHAACgEffSW7Gu6fV656UbERERnratV69esWLFKlSo4GnDChUqtGzZ\nsmjRop42DA8Pd1ZrMHg2BQaDwevDrF+/fokSJXLzMN0UERHhPCiP3pITER8fH2dDL97yaNiw\nYZkyZcqVK+dpw4oVK7Zs2bJkyZKeNixUqFDuH2aDBg28O0w3Va5cOS4urnTp0p42LFKkiPOg\nPHqDUkRMJpOzYWhoqKc7ffDBB6Ojo72otkqVKvHx8WXKlPG0YeHChb24pExEzGazs2FISIgX\nzd3RuHHjmJiY++67z9OG1apVs1gs5cuX97RhsWLFWrZsqdfrPW3o5+fnHI2goCBP2zZp0iQm\nJsaLSa9atarVavXihOk8TE/P7UB2UTy9pBcAAAD5E2/FAgAAaATBDgAAQCPyy0UABzeu+eib\nLcfPXrLr/SJKlG/atkePFpVdN5nSq+vv8ZauSz/sWywg9fr98wZP3XqpVIdXFg28fW3EqgE9\n97ScPb9Xma3Des87H5e+K0UU0fmsWP9RkP725T7fj+yz5K9br65dX86sdzZ/4viLsw7q1q17\n2+DeFUEvde6w057BekXx+fzzj598rFONRR+MKebBF52ktnfckzOO3Uiz0jf8sbXL+zlvO8fz\n95MXxOBXvEyl9OOZMiYpa279fT7OHFEkxIOv4Ui9r+NnL1msDn1oxW59+t/Tc5fpjnJx4o6f\nvZRosetDKvTsOyDnJk7y8dzteqa3s+1vMwYwdxnKhbl7bOuUXDth5oe5O3zygk0ksHTNDh0e\nz9G5c9EtkHX5Itj99cWsye/sb9H9qa4Dypsct04f2PHB4gnHbs2f2vEuD3dFr2xdcbzvxNr/\nrlJt7/56TZ/J5dg1Rk+ZnWwTEdUe98KUlyoOnfhkiUARSbz65az5Oz+/lti3kJ+IqGrS6gu3\nVNWx5siNybVuX66+4WSsf9FBbp6kRCSigLlo7YHDWxTdMGf6TzGWlH0pSva8SmoObt5Qdhyr\nM3B4i9ufadAbCzpvpIxnsXPvJNV7vH3Rs+6M59bp47+6f+obQyt5VEbqudsy54X9hUM+u8fn\nrsboKZGzph6rM7DinmU5NHFTx7fcMHdmytyln7iuA8q/NX18bCG3BtO7iZP8PXcpF7ozdxnK\nnbnLzRNmLszdXU+Yja+9vyegTMOaBXN07oCcli+C3btrfy/afOrI3jWdi5Wq167s9+dzH7ws\nHe/ydfmFImtc3fo/i/qGXhW9ThGR+IurzzrCmwbdPJXR9kHlKzk/UqXab4hIYNnK1SoEi4jN\nUtT0+i/7t17p2/U+EUm8sv6GzdC3rO+Xa49IrSYiotqv7Iy1VHqyqvsHZTbofCPKVatW5ncf\nfcq+7A7VWWdW2JPjRURnLBghurMR5apVS3v2eXft70Wbjh/Zu/6qHz/YU7zaI706uDmeHtWg\nN/nLnXN3yKgPqtFjSr1ruTZ3doeqcxTL3rkLKl8pwqg7G1EuItXEiYjdkdWPGaVMXLVq1X43\nZjB3zsF8pms5vcm/UQHznlq9RjaMzt6Jk+ybu0T7Yl/97T+62T53zmBnt1zI+txl75PuPzV3\nuXnCzIW5c3XCbD71ma7l1vz4QaEmg4f3KtMu5K+cmzsgp+WLT8WO79nlWqWnl0//9wdY7Emn\n9x2KrlO3riIiqrVDxy59lq/tHu7rvPfJxzrVWbzy6ph+hxNtfgbxDQm4ciUuIKRQg7b9G595\nd3HSwDqn5m4zFTfHn080FGz0yKPn1r99XDWIoi9ZvlanXq2Ofrlu54GTNxOSRZFaA0brv1u+\n90KMqoo+oPmnHz4rIrtf7hG1I9HHpFgs+tZ9xod8N/8HP78bf13X+/j5mYx2a2KSxabT6R2i\nMxn0dmuiRTXXa91tWNdyK99c+9sfR6ITpFDRYnF/n08yhbfqPij42/lrryYWGzep0KqF+/6+\npYiiKnpFtZXsP6XOH6s/33XSpio6g7lExdqd+vZ//fmBovNd+tGHxkM/vLnyq70nzxmCCtZq\n2Pa5IV0GdunU7eUxP85eevZmokknNmPpCNufl0TxLxBeuV6b4b2qrl664rtfDotOJw6HKoY2\nfcdvWDFbNTX4fN0ke9Lp7Zu++/DDTRfjrCKKwegjVotNZwjx18U5Kreqbt2067Dl9gNBv3Td\n6qHduhuCWn3ywQjnqr6dO95UTUs/Wj2ux2OPL3vnyvL5Px3y/eCDyUnXfh80aGqc6HwDCzfu\n8GTwtwv2tJz9SmfZdyi6evmA5Yvf+3bXH4rBp2DRcm16De/WqHjvTh0SAlp+unLklF5dDyfa\nfPVqnFUURbyYO314icLqzYvRt3xN+oQkm6lw/3XLOqedu8eHXfrkjSOK3ppgCS1XrbjZevb0\nmdgka6Zzd/hIdKJq8tGrNoe5ev+2Fz9cezXRaND1fD3q8IuznXPnUFVzkbJlA9U///rLanPY\nHEaDyVS0bI2UuYua1PezNd8cPfd3fLItrEnPxWN6DezS6fFl71xcOuuH/dfMalycwxweGhAT\nfc1mDqvbtJ1z4nYeOHUzIUlRRBVFEVP9SoG/HLka3OHld/uYM504td6apY+OGTDhL4vzJ7mU\njmMWDnioaIeOXbIyd7/uOrBv+y5nPf7FKj3WZ2S3RsWPvz1i7JdnW765amTRgC4dOgS2qBa9\n6ZCiKM6JG9Gj4b45g13MXYnS5YKNljOnzsRa7A6btUDHpyvsXbP3QowofqojwTl3V/ZGDZqx\nWxUx+JnsFv9uIYmbgiv43Tx27mpSaLlqxU2JJ46dSbQ5FEUxGH10YtXrlCS1zIdr5+miDyxb\nsibDucv4SXdk3de7jybZ9QEBfsk2KVq2RpsWxmULN3d468MOf299c+VXeTN3z732+WujH25Z\nYvPeah+9P9R5lqs+vvnWl7cv+ejDXJ07fUhEmP+lM6K28/8AACAASURBVH8m6kylK9XJuRPm\nc0O66KIPLH5l/tY/onUGk1Fnd9x17rL7hLlj/4mYJIsioip6H1OZpsqpDYlqp7dXPxl0KVtO\nmMV89I937phm7pYtWbP/6IlEQ8GUuZvfq4wl5ug7b7y/88CpWIsj/J8T5vG3R0zeVsX5eBCR\nmFNL+47ZvOSjD4v5ePx9MfhPyRcfnhjQsfq13xY/NWb6io+//v34OYsqenOZus5U55KqiEOV\nOPPDi99aMrxz5Q2rXpq/52qDJwrtirEkJgb0Hz1t0vAe+z5664jFHtZgwJxpY2v7n1kweebP\n14qNeGGCiOgU2ffOgvD2w1+d011E7Ld+/PBygmq7Pn9HoohUfLKfIvaj3y9YfzUx5lK8zhj+\nYAGH1eibmGQxhFZuVDPUYUsOKVXE6tCLI+noppVDh83adS24YbifXpHrVy7aRArXe/jGhgVf\nXE8SkStLF8fGW/3va9L1kdqqw6YXObN81r4//zYWKimiOmyJhUrZF04cLiK+9/UtZDs6Yuab\nUqdDgF5XvWf7U5tWzvjqnIisnfDqJX2pp54Z362Qjy3p1CW7I6xOj17tGh7buHL4sKk7rhdU\nRBSjT5EQk4jtx9VzHCJq8i+/xll1hqDly77/O95uDm9Ws4BBdVhsohZuPqTjg8G2+P1bLhcd\nN3N2pzCzn0kvojOIIiK22I37blmd42x1qD4ln3CeTbYvmuFXp/NL855RbdenjZhlDQx22O0G\nP+PBz+Z9dj1Rldtzt2L8jB03iotI24mTO97vWDlvzGWLQ69T7HGbnN2qiljtqmKq493cSezf\nF6KTZyxePKxzaRGxXPvCrkqaudu1dtHBREdAWKDOJ7zopaMHDp0MDzKaI6pmPHdX/dRkVTFG\nlAjQK6pqP7XKOXEi8tWkOSlzJyLWG2cOnzhfp6i/PiBAVS21ho98uJLcnruSrV6cvUzqdJj2\n0iv+eiVu50fOidu+cOqug+eNhSq1KOQralJiYoyIElq+xu2Jiy4xYtI4nfMb3VTVr2DBv85H\nizj/lGQ+cbe2vjhmxs1SLVqH+hYI9PMLjvhi/vjLFkcW5+7gh2t3RJcYOXm6iFSucnviSnZ9\nRES9nnC7z5ub//Ax+4VUfdo5cWsuxyzf62ruDGcO7j90puO4Ga++9LyIxH6xLLz98Ffn9lId\nCSJiuf6lzXp9atSvqqLodUqN3o+qtuiPrybeuKI0KRd0e+4On7IFVX6876N6cVgtFotN37xb\nPUfy8fHr9k8bkencZfiki7+/S6PiZhH7rVtxrcc+93AlWbZwi4gE2I47n3R5M3cLJolIcLs2\nyTe/S5m76+v2BpcbkLtzN7WKMebsX2fsIsWa9s3RE+aMLw5OGzFr96k4RdH7hJYq7sbcZfsJ\ns4CoiiIBJp2odoft1E/JDhH1Unx2njDTz92ua8H9R0+bNLznjQ0Lvrie6Nzm/fEzdkSXGDkl\n6rU5s1JOmCW7PpL68bDvf7tSHg+AC/ki2FXsNX3RrHFNygTs2/jRlLHP9OjxxJR5b/1+Jcmd\ntgXqN07+e0t4RNGGHUeXMulu2gu2vfreDVUiGvdp8kD1sqUuXrWpOlECi1WoUK1u34mvFTQo\ngVVb1q1SRkR0OkVUtVaTWuUq9nD2tvNM7MUdL8eL6PS6QrVbtQg2KXVq2ET8DRJYqk+F9j1H\nTX9YRHwLdxjQt7yIPDhy5oBivj56fXCN4kk287TZ/bdciHco/i8ue94u4luszvhXnnP+Y6ev\nNrRp517PzhzV5+lppc0GVaeIyJ9XEqbMn1830MfHoHM0H/ZUEYOIFH+8ruXWb4kO9eFHmhkU\nCa3VatbE57uUDlRVNcHh+9KSFzu2frCYWUTEocrVXR8u++CzGJsjNj65S7tYh0h4k0kLFz8v\nIvc3qOg8qFn9npww5fkb4mMSaTphQN3Heo+e01VEpEDJ9n2fFhHfeq3r16xW2KhPsjhErKeT\nbSJSzN+4esslEXHYrieoUrBnHWdvMYUG9WxZt3jhkKu/vXEsyRy1bPmiWeOaVy9p9jMlO9TT\n6yY75y6iTbcRk/uLSGjpim16dFcdiaeTbYoo4X4GZ7ciYhFFHH95N3fGGp1FtSQGF3qo58si\notqu/xSTnHrumhUwxNhEUUSJjg8s2ad+1z4tChlO/h0/ef70DOduZLfkGw61/ow5Ly8aZxMp\n1LrPP/+Ri3+DsSlzpxcxVOokqmXbmbipb75nVuTwqcB2Tz7vnLuij9qcE1exXBmjotQeMqpL\n6UARidb5X7f5zpo/qaJZVUVuJVgtqnrtwE/Oies/aUCppG8dIuFNeotItWqlfP19RST+hxdd\nT9zpEs1HTH26jI8uPj7xwef6OAc5i3Nna9R5xJSBdauWF5Hyjz7m7NMc0tYocnr3FWc/DlVt\nPKpFzPFP73/02dJmw+Gja847CruYu4d6PF7cbN96xKdMufIi8s+TrlfdQB8RUa3XPt/y6kW7\nqoj4KEponceaFtA7RAq36qM7HRdYsk+dR2opIn5FHu3wkMmmioijRWHTLwdaVPMzWE6sPpaU\n6dxl+KSrVuXCj2eTKwb4+Bh0l4PLtu090KyIiNgTfs/buRMRQ1CrOgHGlCfI8VMx9QbXz825\nq1Py0K/XkoYuGGtXxRxRJedOmOEtB7S0rjuWZFJsNlXxe3GxW3OX7SfMC1ZfX51SoFFvEanV\nsJLdISLyy9ih2XjCTD93M+aObfJA9er1mqb8dRCRiDbdRkwZWLdqhTLlK6ecMM0hbVMeDw7b\n9f8dvZnyeABcyBfX2IlIqZpN+tdsIiKJ0Rf279n11bq104ftX7BqcSnTXf47Kdqxn3nP4PfO\nxA4tE6S3qT4VesVsXWPQGXwMOhGJOXJQbypex+fKdRERUXS+/Uv6L9r246f+JhGx29K+DR19\n+uYfu0+K6AooIiIPN47Y9vNpEYmLT5KTC945KfKeiEjMoZf6jhIR+fiZ3iJi8PG7dOCab+gj\nocffSVT1vqFtKoc3qBNgvC7iE1ivToBhd5zVVK94h+a1D+7a8cnZC7E2h92uioiqqpN6dXHu\nes/YvntERKTOfYG+YR2bld84e8BAnV099cPG2Mim9UqFOFTRF2hezqwXER+D2WAQuy3JXKxu\nx1YP3F+nQeUS5i8nPS0iEvPt5PG/i0jLITP3bu3qe1+49VpE8qkjqqpP1gcX/O2rC5cvbPji\nVxGJ3fvh5F3HRCT26w8/MVTYeSMh9XDUaFxo8/rvpd3A6APLVJEKJW9/Hq1IixLOG1d/vmAO\naV3OrJd/5m7G410uVGnuOL5h+rD98z+YF7vvFxHZ/e6iPad/S+m2zIOFD67/voLz4PVFSumv\neDd31lNfppm7nw7dUD/9d+4aVdH/tNPqUCU6Ze5ERCRlwNPMnf37r0QJfK5KiI+uXp0A43VT\nNefEiUjhVqU6lKvgnDuHiO3M13fM3acTOnx6u/O61TuXKL9z9oCB1erUSnSo1pDy9aqHiEiQ\neiMmpHU5s/6mwWwwiENMARKnr9bl+QHtK5cwH9y1c/3qoyKS8Md6EWk+4NmGgT4dO3QQfaHk\nU3+5mLjEM1bzHzt2xyQ6VNPZt5Zmy9z9sCuk3H3hn1w8LyIbZy9M6dOsk1vf/yiPV1RFRCk4\npEG/M7pv3zsTW0Cvi/9ud9j9Q2O2vp3Z3HXs3CHx+08++W7Nm9fv+E+yV4vCez47q9MpP312\nQhSDzhhhdlwSkSZVjVt22i9+PHaliFxe8P5JEZGYQy/1HHi74caLcca4TT0bFn572zlzSNvM\n5i7DJ13ixX2qqh67ZRGRPWP7dvqnGENwu2blN+f53PVqWWTy+u+l3UCHqtoMRQaUK5Cbc+ec\nuNalGu8OWHA9J0+YF3b+VbTGFZN/AcutRN/QNuXMejHffe6y/YSpNxWzJh6JOfixiLQcMlPZ\n//ivcRadT/HkU8ey64SZ8dyJyO2/Dkbnc6RDp7bOg718+dKfR35N/3iIPrAs3lA05fEAuJD3\nr9hZYrfPnj37vOX2V4P4hhZr2Pqx6a9PtVsurPorg0+/i4g11XWBRj9T//oFf11+UFTLBbsa\n0qaspLrYVlVFRAky3D5Mh/Xa+rNxibFH43X+IqLTp32zN3H7mZ1n7KJUsKmqiBR/tEFy7FXn\nXSOWLqwV4RtQNEh0PsOeff7leRNEpN/Esf16dqpdIchiTUj6f3t3HhBF2ccB/PfM7Owuuyzs\ncp+moCgSiuV935ZpkmlqpqaZlVpqkqZmaWp2aFqaXW9q2uGNV4o3gheCR4IhICCHnC7Hsrvs\nOc/7x+BGhokgovD7/LX77DPPPM98mYdnj9nV5Ub9lKB0rfjFG9tOhRtEpFnyxsTPt0bpGIU9\nyzAMAQDCyrdt27bphzcBoMWH617xtgcAEUMI6/Duyo1rls1gCdUlRX84Y+Kiny8DALn9U1SE\nELFqWBcFJ3dWZl058eGMiePGjv8t0wAATq3dOOe/f+1KFNDLrEvsHaICsIBEZQAm+UKsWtYE\nAMQeT02ePQUAzLrLN6wy3gKs6yDbho6DnjOo9yXozVE/JTCE2D7CLFPcfjLAEOCzK2fnxLFy\n/75Cdh++9drn26IBwK1Njylzw2zByfs/a1Dv01KgPJWEvPpaTbOTDXvtjuwy9l6vnJ1vX2cA\naO8guiO7GbPnVZndn6kmRtxOyhBbZLZdi7gSW3YMgHzoRFt2LexYIGTRxl+F7DhRRXCdWrhY\nKL24bLoQnFT8j+DWLJvhyTGm/FghuM+3RpUTlgCInHxswyEA1HzjbsEJh9Ssjlj++8l8I2VU\nvd+8fZBrk92HK2ZYTTnf/X5CxygAoP3Ud2xt8gSsJREJejMFIN7DpCxXcd4BzU4u6jah5d2y\n4823lrwxcXexhYKkdfuulSPzDR0CAHYKaX62mSGsQ7Mx5krZeQ8eImQX7MQCYYe9NH7G7Hmf\nfjEXAPq+MLR986IfTtw0GnU85e+WXZUnHSsXE1Ze+aTz7D4PAAireBSy8w19XsjOwFO7dq9K\nH252QnC2A1h3E6ax5PA3aUaLrtA2YVYnuzqYMMUsIbbsHEUMALGWJz3ACfPO7P6p8jkiDDao\nQ+8pVf09RP2U4N7lDWmtLyVBjUH9L+xYsWdsTMzWi+rKhVZDCQB42HO2Eu3tJ4vG0tNa6z+e\nOLYY27co8afczF+MQDxd7d16elt4i8nCA4CydZDVmBWlMQo1yzJ/TDVTnyFvv/LiIAC44wJ/\nMYAlJ/yCFYDJEHZh5z5CJTy5Enl0NG29XGj+6tN3CG86VOjuojkLAJ5PdipJTJL1+jCQI3z5\n2V+ytQPHPGEoOZJaknJGYwQAqyH1jMYEAFS980KBae3KheNGPq8UMRW75vURRValx2AFgZzL\nV367qRVGWpK4+8f1O928jEYe2ry9eNUbAVf+2MgQsJZFphusAKArN5i0F//UWxyDhsxd9PmS\nF+UanWnZzGAAkAW1/ys+CQB4YxoPQKQdOtpzRyx6AGg2+/3QTpnppdYvF3YCAKl3K6fyPwDA\nT87lyJ3SrNQ+4O9vtzLIe3e05zYeOfNrtpav6gobt57eBk3C+dvZWQ2pt4dcAgClxea1K+YD\ngEvbtr4qLQCYNWe1Vso69u5oz+VaeB7AY5h/jbNj5bp/ZCciZam/Vc7OKXAcAFwosxCRl5Bd\nV6UDoeayFm2qzO5wOU+tl9MNVmEg1JItBAcAlrxfbdkRAFaut2UnIoxSxv0WfUHITn1t/4/r\nd/oGth84yN9CodNo/yt/bAQAaQdPQ8mRdINVV24waRO9mqmyTVaP3jOF4NauXDhuXAAFKEm+\nfvvvP5UH4DjR3YITDikAePTtlcdTh7bdbCW1yU6TvhsA+s+fO27kEAAQySvaNJae1lnBVSba\neOSMFUAc3ARun3dG3moA97E+irtlp83+6UKBqQkLXv1De3ZuU7kbUlU/ADA6y4w8z/NGt0Fa\nITtHvwEAkH/1nEjatKNpa0IREGpN4EKedsuPOn4aALQpKZKuM1a90ZIAMRRH3C27Kk86iesA\n4PWRfC8FgZzL8VtzdC5FOx+R7LQWKlUN6GjPrd+30UjBJ7SKX/it0+yE4I7nJQpt1t2E2UbC\n3MzVma2mDiOeEA5vdbJ74BOm1XSDIVCafB0AeGOaMGpPWZ1MmBXZlRwRulQ5O+EcEQbbs8vT\nlc9l4e9BaPa58ff9q7Wocar/t2JZqd+8oS2XfTZDMmJ0x8BmcgkpyU07sPkXRbNnx3vKAQAI\n11LGRa3d1vOtwVxZ1rZv1t3xq+Ey9xEtuG0frzgiYVmGgEvIVBWZWHD69zMdRzkxfp5ikm8B\nbU5q2rWyk1sTKUBTr7KCWxQAhJf3M3NLOgW4tZRxqeVmsORSABk16IEUXE1KKjC5slBkAeBp\nVKIdpZbVX/5MGPZG+IqPxbcA4Pt500pyLZOH3iiTMVBqtTIuTRSDfNnP57z+vlzEGPKufDV/\nh0LC6PRWYvcEpRfDo+KfC3bXWSveWXg6QPXL3KXSKSMcWHJz3/dAJD5SPmrttg4vWvbt3hsT\nKSWElCbHbT9wU+4Tak1PV3D6hfNWTR03ON9ksZSncBxrKM5Nji/Yf9YEQKPK+jAQe+WLn92k\nTG65dd3MhQBgUae1amkfE1cEANnfrYkc5kSpZea03wBAf+PUNzE3AYD6KlPWr2YZVn8hAgAy\n83TCAZ/Q1X31+lUMIyK85d/BuYRMDRBPyeQUUZ9OL+/ZTZ98VsIxurTIJbMO2vu20mZdC4++\n5mcnOr78ixRjKgBsX/ydENyoQd4xO24AEE+VtMbZ6bbutmUnI2CSSagmGypll+5K3BnI54Gx\na51XLKHUciS5rHdL5ebZYUe5wn9nxzNOXqxm/swFTSFDKmIKj30rBAcAjNyP0hghOwqg3bHb\nlp2TlTq1dU5Zv4oSiY+UP7cnrjgpMV9faoo/SghJj8yV+7xgTU+XBE4KEL+7cN6qfiarpfzK\nm2/Ol3KsMT9+f7IJgIZHxQ8OHMlALBDCU7p55ap9eZcAgHWSZcVpqgzu8wWnAIACpG5YLWJE\nfNapT94/X/vsvjxwHQDEKWkFdu5NJGzEgv8BwJWz0dH71hNCmvXwit2wGgA4mdh23qUbeEng\nGPHds7tZYE+pJdnoGNbP7tqlU0IHMnNLOincGMJJCRjSioTC69+uJ4SUJsZ+98cuOwLlGbdk\nXr3yig0UrIQwGXu+3a5mD0RcA4DYa3mTQ29s33xTrnLQFpfybNXZVXnS5ZT5vRbivGnuUgVD\n1Pu/F3H2f10v8bHj6j07F6lImOV6tnda8dt+ANJEJX3I2V3uOLKDy5610xbYixjjreRdv9TV\nhHlBSqjGzABz5iDnyeqqmd0DnzCbcZfSDFQqYcsN1nUzF4pFjM7KO/nZX62DCdOWndAlJ6b0\nwKZvFBIWADhFC0pPC4Mtyry6Y/3mv88RgFGDvGdvWC1WdBl6+3shEPpv7KJFi+q7D+D9VP+W\nTqa4U8cPHDhw6NjJxIwi/+7D5oS9bH/7lf9ObZQJURFbft+y/3CkvMPEQHU8OyBUf3h3gYX3\nfnZ4D0epd25k+EW1s1Tk0GtoHw/n3IM7czh67ujeyPPJHV56zT39Qkpa3KETp3SObQd0aRkf\nsWP7viir2ciyjFsTp/O79nQIHf7sU6pDR2OFj7L6dRvM5lzPuBAdHZsU0NUjI62I8/C+cSHe\nyBN1oZZwcpUc9EazyWIpL9URMCXHJyuDAvKychUeTmePHNKJHZydHEpLNZqcjIBh74XqL5ws\nMEj7vPN+AN234/fte47pTAaeEI8nVKk39IN6+B7ZvSvfaAEKnkOWfjapRUJUxM69l6wULERk\nNVsK/rquDOzz3vujj+7c2vaj97xTzu0M3xWv5UHspQJNbvKZc5eSFIH9hndveiw8vExvZMFY\nbrFQIEaDFQBMN69kWeXlWp178JOW7KsxcemEYVmJlLeYDbnXhy7ZAHEHEjNLKVDOwZk1lQER\nJxw5+Pai17JPHzp4KddKqbT5i10s19kBoZ0U4p1bt3gNHt7VQQIAhJH16NUiJyklp1CdnZmh\nLuf1ZquhVBvUd/jcOdPayTT7dvyeayJEW1BQquMpaHQ0RMHJBoT2DVZsDz8HDOM7uObZycZ8\n0kd7Ye/23R1Ch6fv36GTS0w60x3ZtenmlpFeAjTr+Jmbrs7OYtaYWkQcZfQu2TnrdBqjrkit\nM5sp4VpOnu6YfLLAwDLE54X3J7sZhOysZoNs1LI+uotnUnWDevgmpGQVFZqp1VKR3Zk4tUaX\nlZqUr7OIALjWA5cuHHt051avIWPnDg3KvhR9PO0WT0RExGn0Jm1ehlObAcO7Nz22a8v2faep\nxeDQzMdUoinNzVKXU8rzPLWjZkOVwQ1Z/INLalR6sYFSHhjWXJyiFrXv76Pfu313bbJ7st+L\nL3TwOLJry/Y9x1S+PgoRrynTJ5+PYZ+aEFyUIHl1ZPrhWAIgDhrwYltXIIx3buSh1DLXceOG\nNnUgjKzK7I6dyXR1cZWwxuiIE+mFVJ2fJfZUxe/Z2yF0uJOIiQvfeuv2i/EOSpW5XJ97NTVg\nSNggdXRMKQ+WtKOnsl2dncUiatSrU9PUwIgIpZQ3JMVfV7TqPTOs56G9MXfLrsqTLmbnnpdX\nfu1adCUuJZunlHMJmvnR4rF93Os9u6tqg7e4cOeWLdHpWgBQSMU+z4R2UogB4CFmt6+AOHp7\nuWvVavWNP/XKkDqcMDNzmo98q6X2yvWC4mpm98AnzFwzy5tNViAEiNFg5Sm1UlpG5Ra9/oFM\nmFVml30pemf4rsjzSf7PzX5Bf+mKW68hnbq2lJQKg00rgOGzPpIkRwqTm5OIkTeVbNt11n/M\nnIGByof6jxk9vujjg+eNRaWGumtfX7j3+edDz+Zpa7xtgs5cm13bNn+wI71n3+5WQVcQXptB\n2dwxnFoeqyo1yOxqHBytm+zqLrh4ra5mB602Xfr3to9CdjxvzEnf9Rhl18BOuur0ra4nzPvt\nD0J3qP+3YquPELGqji4JohYzbz301S5735c7u9/nl4NX2jZIdv/Hs6rNH9hI79m3u1WgFjNv\nPfz1nhoO6p/+Hk4tj1WVGmR2NQ4O6ia7Og7uSbmsNpvfd5fusu2jkJ2FpzE/7X2Msms4J111\n+vZQJsz76A9CVcG/FQAAY+mJkePXMJzqra8HP8xta795LRu/W4U66lVdNNsgs6txcHXUq0ew\nzXrMvZaNN/LsHtmTrjqNN4AJEzUGj8RPitU/aslOTRN7+bnV6Blkzbet/ea1bPxuFeqoV3XR\nbIPMrsbB1VGvHsE26zH3WjbeyLN7ZE+66jTeACZM1Ajgwg4hhBBCqIGo/++xQwghhBBCDwQu\n7BBCCCGEGghc2CGEEEIINRC4sEMIIYQQaiBwYYdQ/dNkfEAIGZtUVL/d2PrBGF9Xe5fmk+q3\nG5UFycVeXQ7Wdy8QQuixgRdRI4QAAHR5P45etqVpaNiKEc/Ud18QQgjVEC7sEEIAAOWFfwDA\n619/+Kqvor77ghBCqIbwrViEEAAA5XkAkDCkvjuCEEKo5nBhh1A9iN3yaf/2zRVSsbNni9Ez\nVheY+MqPJu79JrT3Uy6OcpHYztO/zYQ5XxdZKAAkrutGCFlzU1upLt9PZWfvWd1PxeXHbBv7\nbBdXpb1Y7hjQof/HGyOF8t1Brm4h+wAgzEchdx15z3aWNVeJJF56vuLrzbMiBhNCHHzn2Cqc\nfLkFIWRjvh4AtBlRM0cPauKqlMidWrXru/j7A/w/W7tnhQrUtHJ0IMNKZv+eWM3xIoRQo0MR\nQg/Xn2tHAYDUud3E6e+/9+YrAXJO1bY5ALx8TU0pzdw/lSFE2ap32ILFnyxe+MrAIABoMXY/\npdRQfIwhJOidc7amStM/AYDu3yZWZ78FsV84iBhOHjBh6pzFc9/u30oJAP0/iKSU5p86vnVd\nZwB4/ZfwI8cv3bOpq2s6A8CyDI1wd/8AXwBgWFmuySqUjHWTSxy6UUq1N8P97ThO1vTVaWFL\nP5o7spcfAISM32Br6r8rtJZxnp0PUEopb149Nogw3IzNCdUZLEIINU64sEPoobKUp7iJWZn7\n0ASNSSjRZh9rKeNsC7ufg1xE0iYZBottk1neCjvnocLtmT4KO6fBtocOjfInjCSuzFSNPfMv\nuck4WWBUrk64bzUXzm7nQhhpVKmRUlpweSgArMguq84odPmbAODpTy4LdweqpO69OwPAzKQi\nSqlZF88S0iz0EKV0UZAzJws8c6vctm34uyEAsDS1RLj73xUqFna8ee2EYEK4t3+Or073EEKo\n0cKFHUIPVe7pEQAQGpFZufB8WLBtYacrVquLtLaHeKt2qpe9VNlPuPvXt90A4H+5WuGhQBnn\n0ubL6uxXX7gDAJ6cca5yYVFiGAD02ZZK73NhRynt5ihR+i2llBo1ZwFg/PmrCpYJnn2eUpp/\nfiwATL5YYNYlsIQIhTbGkpMAEBx2nlJ6zwqtZZxH533fTgoBgKbDdlezbwgh1GjhZ+wQeqgK\nom8AwOinXCoX+k9sZ7stUzrpr0evWjJ/8rhRA3p18nV2Xpfz94fq/MYsYQhZ89U1ALj155xE\nvXng6lHV2a+hOAIA/MY3q1xo7zseAHIP59VgIAt7e2oyVxRZ+KIrKwlh5z0ZMMtHkbFtFwD8\n9WUMI3JYEuRsKDpopTR+ZUdSiUTZCwBK40sB4J4VAKDw4ivTNqV3VEqyIqae0Zhq0FWEEGo8\n8OtOEHqoGBEDAHdce8pIVbbbO2f3G7nqhHe7vkP7dB7S7ZnZH7e9OWXA9IKKRyWOfWb62H/3\n06ewfPvRWXtEkiZf9/Co3p7pv4sIEQEAtVTx0D21W9iH37PhsxuaZ1ZflLmOaWUnGjau2dLl\nawrMy348nqP0/9hDzGgZMQAEz1n/RV+vOzaXOIYAANyzAgDlyScH4icp17t1/GjUiB+yDk+v\nQW8RQqixqO+XDBFqXPJiRgHA8CNZlQsTf+gKEiUJ7QAAA2FJREFUAC9fUxs1Z1lCmjz3feVH\n1wc42d6KpZQmft8dADZnp7hybNPn91Zzv/rCbQAQ/G5M5cLipHkA0HNzCr3/t2Itxix7lgkO\nOz/WTe7/0glKaUnaAgB4+3IUQ0iP9UmUUnN5CktI4JTTlTc06xO3bNkSmaurToXWMs6j036h\n/IchTQBg/um8avYQIYQaIVzYIfRQWcrT3MSsvdfwa1qzUGIsudxLKRUWdrq8DQAQsiDOVl+X\nczpIzkmVfW0lxpKTLCHez7UCgMUpxdXes3W4q4yTP3mmoOIyBd6sntPelTCSo8UGev8LO0rp\nUn+lncsLLCGjzuZSSnlLiRPHeA5oCQB71BV7WRLkLLJrfvT2FRuU0k0TAwghm/J11anw91Wx\nlJrK4p6QiuycB6rN1up3EiGEGhVc2CH0sP359UgAsHNtP2XWBx/Mej1EJW32zCRhYUet5f2d\n7Vixx7RFK9b/b90Hs8Z72Cm7NVMwIuVXv2zTWnmhhbAmDgAgVfa9rwVO/rnl9iwjVrR+feaC\nTz54d1BrFQD0XXBMeLQGC7urazsLL/zH3r4sd7m/EgDsnIfY6pRlbG0iEXGyZi9NmvHZ8sXj\nBrQGgOBXN1ezQuWFHaU08fuhANBhQfT9jBshhBoRXNghVA/O/bqsTzs/e4lI4eL74rS1Zdq/\n4PZVsdrMoxOe6eTtLHfw8Ov93Cv7rhYVxn3eVCUT27tmGyu+A+XaD90BoO282Pvdb86pX0cP\n6OjsYCeSKvyf6rN4wwnbQzVY2OnyNwOA7atYKKV/Lm8PAAEToipXK0mKeCO0l4fSXixzahXS\n/aMfD5p5Ws0KdyzsKG+a7O/IiBz25Our30+EEGo8CKU1+dw0Qqgexc0P6fjplfBC/TBnaX33\nBSGE0CMEF3YIPWZ4860uzt7XVNNLM1bWd18QQgg9WvDrThB6nEx9e7Y+Zdf5MtNru961Fd4I\nH9Ju0un/2Eri2Cvvxu7q7+WBN4gQQujhwFfsEHqcBLkp0i2OI6av3vTxiPruC0IIoUcOLuwQ\nQgghhBoI/EkxhBBCCKEGAhd2CCGEEEINBC7sEEIIIYQaCFzYIYQQQgg1ELiwQwghhBBqIHBh\nhxBCCCHUQODCDiGEEEKogcCFHUIIIYRQA4ELO4QQQgihBuL/R/dIi0oiLDwAAAAASUVORK5C\nYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Number of orders per weekday per manager \n",
    "Region %>% \n",
    "  filter(!is.na(average_duration)) %>% \n",
    "  ggplot(aes(x=day_of_week, y=number_of_orders, fill = `Customer Segment`)) +\n",
    "  geom_col(position = \"dodge\")+\n",
    "  facet_grid(~ Manager)+\n",
    "  labs(\"text\", title = \"Number of Orders per weekday and Manager\")\n",
    "  theme(axis.text.x = element_text(angle = 90))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "af8f4e88",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:08.433027Z",
     "iopub.status.busy": "2022-11-13T22:09:08.431444Z",
     "iopub.status.idle": "2022-11-13T22:09:08.780992Z",
     "shell.execute_reply": "2022-11-13T22:09:08.778986Z"
    },
    "papermill": {
     "duration": 0.368484,
     "end_time": "2022-11-13T22:09:08.783355",
     "exception": false,
     "start_time": "2022-11-13T22:09:08.414871",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\n0uDhIJslblH/ISLS8cPyT11R3Ww9WnsP+mXmgIvDdxd21IlI6PGvxl4Me9L6MmWjrFuQ7nM5\ns4Nd3L8XTsf9KVJBRBJjr8aYLUZvQ9LciAdBLzZs3+MvpwEAAGlQNM6LD39/u0LLuW/VXzvb\nr6VfJZMu9tyRnT8dOKdzLLJo30pnjSIi/t2KT/zw9/INuo98o0H8zTNLZ82+5W2Qa/dzm6ng\nxEbZvtw+uU6Li71qlC5svnt506KvtXqvCVMriojeVS8iX85dFFuyWpdO1Rf+MPbXWmPqFanc\no3fbQi7Ruzcs2XrqToMx2xu6G9OoMzVDtiz4qnjX5kXKtO3kX7mY54kd3y3fdq5sz+Xdsqd3\ncKvdyu1dqlRe+V7D7Yv9mteukM3NISr0v8M7f/j9QliFXl9+XNE7PStatHVqiRrDy5do/FaP\nJsa757/5avVr1bw3HQpyeq5Xc7zgRqXY4U9dPrODXdl2xWPmb1z0s0+9Ii6/b5yv0bp2LuUp\nIqLofZz0e+atqfNOC3341TXzFygKbzYBAODZOHjW+eX8qcXTpy3f8Mu6bw5HJuiy5y3a8Z0J\nw8ePqJL9/mOtFSfumhfVZ+767SPeWRlvseSp1f3XGUG1a/5snatoTd8f/23Uu+M3//zttm8j\nHT1yVfLrsm78R23yuohI9uoftap09rcpQ4+XHtulU/Xs1Uef251/6MTZG76eFRanK1CqysQl\n48b1rPd8xbvk7/j336ZRo6Zt3rB4U5yhcPFS47/6ObB3s/T3oHUotOKvy/6fTV26/oefVi8J\nDY9z8chRulLTTz98991ODy+Gpr0i70pDzh/N++bgj5d/Mlmft+K7q49V/qLJZq2jm/Z5kskL\nblSKHf7U5ZVMH6k271gxZ/3uY7fuxOXIX6xlj8Etyt+Pz2Hnts6Yu/bM1aA4s6Vko7ez/b7U\n8NGSwblderRrU2L28vfz3X/SeGznDtoxX04o4/nE3qOjoyMjI21SqMlkOjIpS997a1++DffZ\nuwQ7CLxT294lIC2BB1O+awovKHzEOHuX8My0Wq2Hh0dISEgWvxTr7e1t7xLEHHvvWlBC/rxP\n/pP6qrIcOXLUYCpetujDV5ws8vEaHOwbFfKjHctKp8wPdk9hscTdDbd4uD3PEK4Q7DIRwQ5Z\nEMHO5gh2GScrBDs8UQ2Tw2nTgLAr999QkhB1qoBnOUOT7y9938K+haVHlnsqVlEMHln63UMA\n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\n+Ul+MzPNWrUAAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#number of orders per month\n",
    "Region %>% \n",
    " ggplot(aes(x=number_of_orders,y=Month, fill = `Customer Segment`))+\n",
    "   geom_col()+\n",
    "   labs(\"text\", title = \"Number of Monthly Orders \")+\n",
    "   theme(axis.text.x = element_text(angle = 0))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "7b31cc0a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:08.817249Z",
     "iopub.status.busy": "2022-11-13T22:09:08.815670Z",
     "iopub.status.idle": "2022-11-13T22:09:09.123548Z",
     "shell.execute_reply": "2022-11-13T22:09:09.121813Z"
    },
    "papermill": {
     "duration": 0.327298,
     "end_time": "2022-11-13T22:09:09.126279",
     "exception": false,
     "start_time": "2022-11-13T22:09:08.798981",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nTRNe6/X68PDwtNkRmAXHINInxiXdYmjSJ8YF6VBaXDxhNESO/H6mtmr3GYM6J6Q6IYS9a+Us\ndupdhx+a3upf/Pl7RGypat7JLwIAAECS0mLGLvL+0guR+g7FHE+eOJHQaOuQt3hhlz6NCvRd\nNGRP5n6F3fSbp4/XZa7axsdJCCFUdu9cBAAAgKSkRbALv3xTCDH/x5GvN7rkHrh0Upk8TUcE\nxUxaNXHQk2iVb/HAEcM6JUwhJrMIAAAAiaVFsMtSefTmyu9YplJX/6p39a9SuAgAAACJMAsG\nAAAgCYIdAACAJAh2AAAAkiDYAQAASIJgBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJ\ngh0AAIAkCHYAAACSINgBAABIgmAHAAAgCYIdAACAJAh2AAAAkiDYAQAASIJgBwAAIAmNtQsA\nAJjBCLfD1i7hPyfY2gUAiTFjBwAAIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJgh0AAIAk\nuN0JgJThthppj9tqAFCIGTsAAABJEOwAAAAkQbD7f3v3GSBVdTdw+Mz2ArJL74hIU6oFxa6I\nXUGi2Aggtoi9x4iIldhjwdiwoaGo2FAxdowafG1RDNgVRZrSYfvO+2EJIIJK0VmPz/Np587s\n7H/mcIffztyZBQCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIREaqB4A1e/35HVM9wu9Ph29TPQEAG8QzdgAAkRB2AACR\nEHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\nAACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkchI9QAbQSKRqFmz\n5np/++vP77gRh+HnqNm9JNUjsAYbsh/xi7I01dOGrEtxcfFGnARWiCHsQgiVlZWpHoF1YL2q\nJ+tSbVma6mlD1iWZTG7ESWCFGMIumUwuXbp0A64gd6ONws/z89bLuvzaNmw/4hdkaaon60I1\n5Bg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBIZKR6AAA2gtef3zHVI/z+dPg21RPA6jxjBwAQCWEHABAJYQcA\nEAlhBwAQCW+eANaNg/RTwEH6wM/jGTsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASGSkeoAfUfnSmFuemPT2V4vT23XoNvCUozfLq87TAgCkWPV9\nxu6zh4dcP/b17fscd9Hp/Wt8+vwFZ9xWmeqRAACqs+oadsnS68ZObXXEJYfu2X3LrXc+7aqT\nl8585oEZS1M9FgBA9VVNw65k4aTpxRU9ezapOpldsFPXGllvvTQrtVMBAFRn1fSotdKl74UQ\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Identify the region that shops the most\n",
    "Region %>% \n",
    "  ggplot(aes(x=Region, y=number_of_orders, fill = `Customer Segment`))+\n",
    "  geom_col(position = \"stack\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "71c65522",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:09.165947Z",
     "iopub.status.busy": "2022-11-13T22:09:09.163860Z",
     "iopub.status.idle": "2022-11-13T22:09:09.693308Z",
     "shell.execute_reply": "2022-11-13T22:09:09.691745Z"
    },
    "papermill": {
     "duration": 0.552736,
     "end_time": "2022-11-13T22:09:09.695704",
     "exception": false,
     "start_time": "2022-11-13T22:09:09.142968",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\n78m1nvbDny7q0rBmTJgprlTF7g/OTnK6PQtSFOWpo/99H25Jk/7efWc9LyZtWlqveLhJbyhe\nufFr35/6YfnY6iWiTba4xneMOu1weeZ3ZR5/enjPulVKm22xdVr3emPHCU97jEFdcOTo6F5t\nS1UYkJ9bquAEGuyeG/WhrdSgPze/3rtDo5JFYqLiSjRo2+O1TX8MKR2+7pG5+TpEAABwFUqL\nX3kwPat3z3KXtBdpPGDc2BEiIuIaflPTl79yzV62/uuN73SK+v2exnW/Ssr0zLagTa/ao5fs\n3vfH4jHNl0y5c8bfSZlJX93Qdbh0enTjl/9bs3DMj29MunXBnssOY94dcx9cunnvrm96hh8c\n1rLOnavcyz77fvvqaX9sWNDn/fNP7ZjYuv6c7cq4+W/t2PLBg03l3laVF+9L9Ex6775bI28d\ns/3b1/JoqxSyQC/FrjqVVnXSSKvuopOlis468uFqyye/IxLKHf4AAODa5Uj7Q0SqW3xmiaRD\n01/78+zyf9b1LxUmIg1btPwypsiIZ3f9PLO+iETd/s7s+9qLSI1H36w7ZfW3f6dkuD9Ndroe\nGNavSQmr3FRv8/sl9lljLzuM+i988MCt1URk0suNXm7+6cfvz65j1csNVcaVmfTOV6ekT6WU\nY88/892pLxJWtI4yiUj9xq0d62NnDPvqvk1dRSS+wvwpg9vlzRa5CgR6xs6m02WczMjZnnEy\nQ1G5fwIAgOuO3lxRRP5Kz7qk3ZV1evfu3fEOV/w32wzW6gNKhXnaFTV8dOXIo+/v9vxY6b7a\n3pI4vU7cYiv96D0NS9xZvkL72/tPnbPodLmmt7UtftlhFGse53lhiDKrprJ1rOeDZqxe53a5\nReTcn5+63a420Wblgkf/TEg++JdntsqDaoa8Ba5CgQa7UVUi97857Iez9uyNmYk/Pbx4b2Tl\nkfkwMAAAcFWzFu1XwqiuWnX4kvYTO+6vXbv2LykOt9stctG1PlVV3O7zX2FlCr/0VJ9OH/fW\n9//8vnVZt4al/9j6ZscbS3eesCnXRWdku5Xzkj5yNhkiLTp9VHLKRY7t8lwslogYo9+1vMYE\nGuwGvzfDlP5r8/J1H5r4zIrV77+3esUzk4bVLdfsxzTj9HcH5+sQAQDAVUhRw98cXPXnKb13\nnMl2Tc/tmPPANluJ/jdHm4q2aOVI++Ptf1PPT3GmzNt7rnS32rl3J3Lym3mjxjxbo/mtIyc+\n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\nwOtRAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Busiest day of the week\n",
    "Region %>% \n",
    "  ggplot(aes(x=day_of_week, y=number_of_orders, fill = `Customer Segment`))+\n",
    "  geom_col(position = \"stack\")+ facet_grid(~ Manager) + labs(\"text\", title = \"Busiest day of the week\")+\n",
    "  theme(axis.text.x = element_text(angle = 90))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "5acd949c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:09.732187Z",
     "iopub.status.busy": "2022-11-13T22:09:09.730699Z",
     "iopub.status.idle": "2022-11-13T22:09:10.107861Z",
     "shell.execute_reply": "2022-11-13T22:09:10.105013Z"
    },
    "papermill": {
     "duration": 0.399023,
     "end_time": "2022-11-13T22:09:10.110268",
     "exception": false,
     "start_time": "2022-11-13T22:09:09.711245",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“Coercing text to numeric in K2236 / R2236C11: '05408'”\n",
      "Warning message:\n",
      "“Coercing text to numeric in K5276 / R5276C11: '05408'”\n",
      "Warning message:\n",
      "“Coercing text to numeric in K8800 / R8800C11: '05408'”\n",
      "Warning message:\n",
      "“Coercing text to numeric in K9148 / R9148C11: '05408'”\n",
      "Warning message:\n",
      "“Coercing text to numeric in K9149 / R9149C11: '05408'”\n",
      "Warning message:\n",
      "“Coercing text to numeric in K9150 / R9150C11: '05408'”\n",
      "Warning message:\n",
      "“Coercing text to numeric in K9388 / R9388C11: '05408'”\n",
      "Warning message:\n",
      "“Coercing text to numeric in K9389 / R9389C11: '05408'”\n",
      "Warning message:\n",
      "“Coercing text to numeric in K9390 / R9390C11: '05408'”\n",
      "Warning message:\n",
      "“Coercing text to numeric in K9391 / R9391C11: '05408'”\n",
      "Warning message:\n",
      "“Coercing text to numeric in K9743 / R9743C11: '05408'”\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 22</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Row ID</th><th scope=col>Order ID</th><th scope=col>Order_Date</th><th scope=col>Ship_Date</th><th scope=col>Ship_Mode</th><th scope=col>Customer_ID</th><th scope=col>Segment</th><th scope=col>Country</th><th scope=col>City</th><th scope=col>State</th><th scope=col>⋯</th><th scope=col>Person</th><th scope=col>Product_ID</th><th scope=col>Category</th><th scope=col>Sub-Category</th><th scope=col>Product Name</th><th scope=col>Sales</th><th scope=col>Quantity</th><th scope=col>Discount</th><th scope=col>Profit</th><th scope=col>Returns</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>⋯</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>1</td><td>CA-2016-152156</td><td>2016-11-08</td><td>2016-11-11</td><td>Second Class  </td><td>CG-12520</td><td>Consumer </td><td>United States</td><td>Henderson      </td><td>Kentucky  </td><td>⋯</td><td>Cassandra Brandow</td><td>FUR-BO-10001798</td><td>Furniture      </td><td>Bookcases  </td><td>Bush Somerset Collection Bookcase                               </td><td>261.9600</td><td>2</td><td>0.00</td><td>  41.9136</td><td>No</td></tr>\n",
       "\t<tr><td>2</td><td>CA-2016-152156</td><td>2016-11-08</td><td>2016-11-11</td><td>Second Class  </td><td>CG-12520</td><td>Consumer </td><td>United States</td><td>Henderson      </td><td>Kentucky  </td><td>⋯</td><td>Cassandra Brandow</td><td>FUR-CH-10000454</td><td>Furniture      </td><td>Chairs     </td><td>Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back     </td><td>731.9400</td><td>3</td><td>0.00</td><td> 219.5820</td><td>No</td></tr>\n",
       "\t<tr><td>3</td><td>CA-2016-138688</td><td>2016-06-12</td><td>2016-06-16</td><td>Second Class  </td><td>DV-13045</td><td>Corporate</td><td>United States</td><td>Los Angeles    </td><td>California</td><td>⋯</td><td>Anna Andreadi    </td><td>OFF-LA-10000240</td><td>Office Supplies</td><td>Labels     </td><td>Self-Adhesive Address Labels for Typewriters by Universal       </td><td> 14.6200</td><td>2</td><td>0.00</td><td>   6.8714</td><td>No</td></tr>\n",
       "\t<tr><td>4</td><td>US-2015-108966</td><td>2015-10-11</td><td>2015-10-18</td><td>Standard Class</td><td>SO-20335</td><td>Consumer </td><td>United States</td><td>Fort Lauderdale</td><td>Florida   </td><td>⋯</td><td>Cassandra Brandow</td><td>FUR-TA-10000577</td><td>Furniture      </td><td>Tables     </td><td>Bretford CR4500 Series Slim Rectangular Table                   </td><td>957.5775</td><td>5</td><td>0.45</td><td>-383.0310</td><td>No</td></tr>\n",
       "\t<tr><td>5</td><td>US-2015-108966</td><td>2015-10-11</td><td>2015-10-18</td><td>Standard Class</td><td>SO-20335</td><td>Consumer </td><td>United States</td><td>Fort Lauderdale</td><td>Florida   </td><td>⋯</td><td>Cassandra Brandow</td><td>OFF-ST-10000760</td><td>Office Supplies</td><td>Storage    </td><td>Eldon Fold 'N Roll Cart System                                  </td><td> 22.3680</td><td>2</td><td>0.20</td><td>   2.5164</td><td>No</td></tr>\n",
       "\t<tr><td>6</td><td>CA-2014-115812</td><td>2014-06-09</td><td>2014-06-14</td><td>Standard Class</td><td>BH-11710</td><td>Consumer </td><td>United States</td><td>Los Angeles    </td><td>California</td><td>⋯</td><td>Anna Andreadi    </td><td>FUR-FU-10001487</td><td>Furniture      </td><td>Furnishings</td><td>Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood</td><td> 48.8600</td><td>7</td><td>0.00</td><td>  14.1694</td><td>No</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 22\n",
       "\\begin{tabular}{lllllllllllllllllllll}\n",
       " Row ID & Order ID & Order\\_Date & Ship\\_Date & Ship\\_Mode & Customer\\_ID & Segment & Country & City & State & ⋯ & Person & Product\\_ID & Category & Sub-Category & Product Name & Sales & Quantity & Discount & Profit & Returns\\\\\n",
       " <dbl> & <chr> & <dttm> & <dttm> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & ⋯ & <chr> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 1 & CA-2016-152156 & 2016-11-08 & 2016-11-11 & Second Class   & CG-12520 & Consumer  & United States & Henderson       & Kentucky   & ⋯ & Cassandra Brandow & FUR-BO-10001798 & Furniture       & Bookcases   & Bush Somerset Collection Bookcase                                & 261.9600 & 2 & 0.00 &   41.9136 & No\\\\\n",
       "\t 2 & CA-2016-152156 & 2016-11-08 & 2016-11-11 & Second Class   & CG-12520 & Consumer  & United States & Henderson       & Kentucky   & ⋯ & Cassandra Brandow & FUR-CH-10000454 & Furniture       & Chairs      & Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back      & 731.9400 & 3 & 0.00 &  219.5820 & No\\\\\n",
       "\t 3 & CA-2016-138688 & 2016-06-12 & 2016-06-16 & Second Class   & DV-13045 & Corporate & United States & Los Angeles     & California & ⋯ & Anna Andreadi     & OFF-LA-10000240 & Office Supplies & Labels      & Self-Adhesive Address Labels for Typewriters by Universal        &  14.6200 & 2 & 0.00 &    6.8714 & No\\\\\n",
       "\t 4 & US-2015-108966 & 2015-10-11 & 2015-10-18 & Standard Class & SO-20335 & Consumer  & United States & Fort Lauderdale & Florida    & ⋯ & Cassandra Brandow & FUR-TA-10000577 & Furniture       & Tables      & Bretford CR4500 Series Slim Rectangular Table                    & 957.5775 & 5 & 0.45 & -383.0310 & No\\\\\n",
       "\t 5 & US-2015-108966 & 2015-10-11 & 2015-10-18 & Standard Class & SO-20335 & Consumer  & United States & Fort Lauderdale & Florida    & ⋯ & Cassandra Brandow & OFF-ST-10000760 & Office Supplies & Storage     & Eldon Fold 'N Roll Cart System                                   &  22.3680 & 2 & 0.20 &    2.5164 & No\\\\\n",
       "\t 6 & CA-2014-115812 & 2014-06-09 & 2014-06-14 & Standard Class & BH-11710 & Consumer  & United States & Los Angeles     & California & ⋯ & Anna Andreadi     & FUR-FU-10001487 & Furniture       & Furnishings & Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood &  48.8600 & 7 & 0.00 &   14.1694 & No\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 22\n",
       "\n",
       "| Row ID &lt;dbl&gt; | Order ID &lt;chr&gt; | Order_Date &lt;dttm&gt; | Ship_Date &lt;dttm&gt; | Ship_Mode &lt;chr&gt; | Customer_ID &lt;chr&gt; | Segment &lt;chr&gt; | Country &lt;chr&gt; | City &lt;chr&gt; | State &lt;chr&gt; | ⋯ ⋯ | Person &lt;chr&gt; | Product_ID &lt;chr&gt; | Category &lt;chr&gt; | Sub-Category &lt;chr&gt; | Product Name &lt;chr&gt; | Sales &lt;dbl&gt; | Quantity &lt;dbl&gt; | Discount &lt;dbl&gt; | Profit &lt;dbl&gt; | Returns &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | CA-2016-152156 | 2016-11-08 | 2016-11-11 | Second Class   | CG-12520 | Consumer  | United States | Henderson       | Kentucky   | ⋯ | Cassandra Brandow | FUR-BO-10001798 | Furniture       | Bookcases   | Bush Somerset Collection Bookcase                                | 261.9600 | 2 | 0.00 |   41.9136 | No |\n",
       "| 2 | CA-2016-152156 | 2016-11-08 | 2016-11-11 | Second Class   | CG-12520 | Consumer  | United States | Henderson       | Kentucky   | ⋯ | Cassandra Brandow | FUR-CH-10000454 | Furniture       | Chairs      | Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back      | 731.9400 | 3 | 0.00 |  219.5820 | No |\n",
       "| 3 | CA-2016-138688 | 2016-06-12 | 2016-06-16 | Second Class   | DV-13045 | Corporate | United States | Los Angeles     | California | ⋯ | Anna Andreadi     | OFF-LA-10000240 | Office Supplies | Labels      | Self-Adhesive Address Labels for Typewriters by Universal        |  14.6200 | 2 | 0.00 |    6.8714 | No |\n",
       "| 4 | US-2015-108966 | 2015-10-11 | 2015-10-18 | Standard Class | SO-20335 | Consumer  | United States | Fort Lauderdale | Florida    | ⋯ | Cassandra Brandow | FUR-TA-10000577 | Furniture       | Tables      | Bretford CR4500 Series Slim Rectangular Table                    | 957.5775 | 5 | 0.45 | -383.0310 | No |\n",
       "| 5 | US-2015-108966 | 2015-10-11 | 2015-10-18 | Standard Class | SO-20335 | Consumer  | United States | Fort Lauderdale | Florida    | ⋯ | Cassandra Brandow | OFF-ST-10000760 | Office Supplies | Storage     | Eldon Fold 'N Roll Cart System                                   |  22.3680 | 2 | 0.20 |    2.5164 | No |\n",
       "| 6 | CA-2014-115812 | 2014-06-09 | 2014-06-14 | Standard Class | BH-11710 | Consumer  | United States | Los Angeles     | California | ⋯ | Anna Andreadi     | FUR-FU-10001487 | Furniture       | Furnishings | Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood |  48.8600 | 7 | 0.00 |   14.1694 | No |\n",
       "\n"
      ],
      "text/plain": [
       "  Row ID Order ID       Order_Date Ship_Date  Ship_Mode      Customer_ID\n",
       "1 1      CA-2016-152156 2016-11-08 2016-11-11 Second Class   CG-12520   \n",
       "2 2      CA-2016-152156 2016-11-08 2016-11-11 Second Class   CG-12520   \n",
       "3 3      CA-2016-138688 2016-06-12 2016-06-16 Second Class   DV-13045   \n",
       "4 4      US-2015-108966 2015-10-11 2015-10-18 Standard Class SO-20335   \n",
       "5 5      US-2015-108966 2015-10-11 2015-10-18 Standard Class SO-20335   \n",
       "6 6      CA-2014-115812 2014-06-09 2014-06-14 Standard Class BH-11710   \n",
       "  Segment   Country       City            State      ⋯ Person           \n",
       "1 Consumer  United States Henderson       Kentucky   ⋯ Cassandra Brandow\n",
       "2 Consumer  United States Henderson       Kentucky   ⋯ Cassandra Brandow\n",
       "3 Corporate United States Los Angeles     California ⋯ Anna Andreadi    \n",
       "4 Consumer  United States Fort Lauderdale Florida    ⋯ Cassandra Brandow\n",
       "5 Consumer  United States Fort Lauderdale Florida    ⋯ Cassandra Brandow\n",
       "6 Consumer  United States Los Angeles     California ⋯ Anna Andreadi    \n",
       "  Product_ID      Category        Sub-Category\n",
       "1 FUR-BO-10001798 Furniture       Bookcases   \n",
       "2 FUR-CH-10000454 Furniture       Chairs      \n",
       "3 OFF-LA-10000240 Office Supplies Labels      \n",
       "4 FUR-TA-10000577 Furniture       Tables      \n",
       "5 OFF-ST-10000760 Office Supplies Storage     \n",
       "6 FUR-FU-10001487 Furniture       Furnishings \n",
       "  Product Name                                                     Sales   \n",
       "1 Bush Somerset Collection Bookcase                                261.9600\n",
       "2 Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back      731.9400\n",
       "3 Self-Adhesive Address Labels for Typewriters by Universal         14.6200\n",
       "4 Bretford CR4500 Series Slim Rectangular Table                    957.5775\n",
       "5 Eldon Fold 'N Roll Cart System                                    22.3680\n",
       "6 Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood  48.8600\n",
       "  Quantity Discount Profit    Returns\n",
       "1 2        0.00       41.9136 No     \n",
       "2 3        0.00      219.5820 No     \n",
       "3 2        0.00        6.8714 No     \n",
       "4 5        0.45     -383.0310 No     \n",
       "5 2        0.20        2.5164 No     \n",
       "6 7        0.00       14.1694 No     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [9,994 × 22] (S3: tbl_df/tbl/data.frame)\n",
      " $ Row ID      : num [1:9994] 1 2 3 4 5 6 7 8 9 10 ...\n",
      " $ Order ID    : chr [1:9994] \"CA-2016-152156\" \"CA-2016-152156\" \"CA-2016-138688\" \"US-2015-108966\" ...\n",
      " $ Order_Date  : POSIXct[1:9994], format: \"2016-11-08\" \"2016-11-08\" ...\n",
      " $ Ship_Date   : POSIXct[1:9994], format: \"2016-11-11\" \"2016-11-11\" ...\n",
      " $ Ship_Mode   : chr [1:9994] \"Second Class\" \"Second Class\" \"Second Class\" \"Standard Class\" ...\n",
      " $ Customer_ID : chr [1:9994] \"CG-12520\" \"CG-12520\" \"DV-13045\" \"SO-20335\" ...\n",
      " $ Segment     : chr [1:9994] \"Consumer\" \"Consumer\" \"Corporate\" \"Consumer\" ...\n",
      " $ Country     : chr [1:9994] \"United States\" \"United States\" \"United States\" \"United States\" ...\n",
      " $ City        : chr [1:9994] \"Henderson\" \"Henderson\" \"Los Angeles\" \"Fort Lauderdale\" ...\n",
      " $ State       : chr [1:9994] \"Kentucky\" \"Kentucky\" \"California\" \"Florida\" ...\n",
      " $ Postal_Code : num [1:9994] 42420 42420 90036 33311 33311 ...\n",
      " $ Region      : chr [1:9994] \"South\" \"South\" \"West\" \"South\" ...\n",
      " $ Person      : chr [1:9994] \"Cassandra Brandow\" \"Cassandra Brandow\" \"Anna Andreadi\" \"Cassandra Brandow\" ...\n",
      " $ Product_ID  : chr [1:9994] \"FUR-BO-10001798\" \"FUR-CH-10000454\" \"OFF-LA-10000240\" \"FUR-TA-10000577\" ...\n",
      " $ Category    : chr [1:9994] \"Furniture\" \"Furniture\" \"Office Supplies\" \"Furniture\" ...\n",
      " $ Sub-Category: chr [1:9994] \"Bookcases\" \"Chairs\" \"Labels\" \"Tables\" ...\n",
      " $ Product Name: chr [1:9994] \"Bush Somerset Collection Bookcase\" \"Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back\" \"Self-Adhesive Address Labels for Typewriters by Universal\" \"Bretford CR4500 Series Slim Rectangular Table\" ...\n",
      " $ Sales       : num [1:9994] 262 731.9 14.6 957.6 22.4 ...\n",
      " $ Quantity    : num [1:9994] 2 3 2 5 2 7 4 6 3 5 ...\n",
      " $ Discount    : num [1:9994] 0 0 0 0.45 0.2 0 0 0.2 0.2 0 ...\n",
      " $ Profit      : num [1:9994] 41.91 219.58 6.87 -383.03 2.52 ...\n",
      " $ Returns     : chr [1:9994] \"No\" \"No\" \"No\" \"No\" ...\n"
     ]
    }
   ],
   "source": [
    "#add clean data set from excel \n",
    "library(readxl)\n",
    "all_data <- read_excel(\"../input/superstore-all-data/Superstore 2017_ all data .xlsx\")\n",
    "head(all_data)\n",
    "str(all_data)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e7ff0783",
   "metadata": {
    "papermill": {
     "duration": 0.016973,
     "end_time": "2022-11-13T22:09:10.144152",
     "exception": false,
     "start_time": "2022-11-13T22:09:10.127179",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Visualization\n",
    "Visualisation of new clean data "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "0099177c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:10.181358Z",
     "iopub.status.busy": "2022-11-13T22:09:10.179849Z",
     "iopub.status.idle": "2022-11-13T22:09:10.619820Z",
     "shell.execute_reply": "2022-11-13T22:09:10.618180Z"
    },
    "papermill": {
     "duration": 0.460701,
     "end_time": "2022-11-13T22:09:10.622467",
     "exception": false,
     "start_time": "2022-11-13T22:09:10.161766",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_data %>%\n",
    "  ggplot(aes(x=Profit, y=Person, fill = `Category`))+\n",
    "  geom_col(position = \"stack\")+labs(\"text\", title = \"Profitable Manager\")+\n",
    "  theme(axis.text.x = element_text(angle = 90))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "9c7bcd7e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-11-13T22:09:10.663900Z",
     "iopub.status.busy": "2022-11-13T22:09:10.662447Z",
     "iopub.status.idle": "2022-11-13T22:09:11.949050Z",
     "shell.execute_reply": "2022-11-13T22:09:11.946187Z"
    },
    "papermill": {
     "duration": 1.312858,
     "end_time": "2022-11-13T22:09:11.952774",
     "exception": false,
     "start_time": "2022-11-13T22:09:10.639916",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "`geom_smooth()` using method = 'gam' and formula 'y ~ s(x, bs = \"cs\")'\n",
      "\n"
     ]
    },
    {
     "data": {
      "image/png": "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\nQMnOzkYQ5MKFC2ACmEqlKi8v7+jo6OzsRFGUZdmNGzdWVVWVl5eD5+I4Pq1FMM/zLMtSFDU1\nwKIoCsfxwcHB663/F7/4xQsvvOD3+0Hlh8vlqqmpcblce/bsiVV1zK2srOz/snfn8VHc993A\nZ3Z29j4l7a5OhG6hAyRAwmAMGIMxWCY1joMdH4U4h7HztDncOGmfJm5f7ZM2edomje3HaZy0\niVNTm9gGTMCAscEgi1MCnUhC963VXtr7mJnnj5+zUcSNjpVmP+8//LJmVzPf0S7SZ3/nyZMn\nL1++nJeXRxr8hoaGOI4jrYa3+/MEAACIIQS7aVZaWjowMDBdkU6VVG7MeSwh+wsy7cKrHw15\neh2db9s73vJZz9/WaUlWoyiK4ziJRKLValNTU51OJ/lSIpGQKQtut1smk/X09MhksuiIOplM\nJpfLs7KyzGZzSkrKN7/5zehpW1tbu7u7GxoaMjMz1Wo1z/MKhWLt2rVbt24tKytLS0tTKpXR\nJ6empiYlJXV3dyclJUUPBoNBqVQ6cbjbjfX19b355pvBYJA0rZEc5nK5rly5YjabExMTb9CB\nG7Vo0aLPf/7z+/fvb2pqInFco9GsXbv2/vvvv8UyAAAA5ggRBDv++P+8+v4ntX1uprCkcsf/\n2pmtitlNsSzLcdzUU53SWEz6WxWGwqsfjQRszq53bO1veIarKepOrkWWnTMajXa73WKxZGZm\nSiQSr9fr8XgUCoVarZbL5Uaj0Wg0Dg8Pa7XasbExiUQSDodJP6xEIlm5cmVeXt6k09I0nZ2d\nbbVau7u7yUC90tLSrVu3VlRUXF2DSqXasGHDm2++2dTUlJqaKpVK7XY72WQsNfWPrZKhUIjj\nuIm7TUx06tQpu92elpbmdrsdDgfpMlar1Xa7vaOjY+PGjVcXeU0bN24sKiqqq6uz2WwajSYp\nKamoqGhiDAUAAJgX5n2w63znf//bWz1PPv/1Lxkjv//5K3/zzdB///z5q3Y/nQ0Mw0yx+1Vh\nKDRmfyEhZ7vCWHT1o5GAzdn9rv3K/3iGTgjCNTY5vb1rKRTFxcUdHR2BQGBkZGTilFiTyWQw\nGHie7+josFgsTz75ZG1t7cWLFwOBAMMwOp0uPz9/+/btE1chsdvt//RP/3T48GG3283zvFwu\nLysr+9rXvlZeXj5xa9FJNm7cyLLsBx98MDIyEolEtFrtww8/3N3d3drampmZSSZPdHd35+bm\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(data = all_data, mapping = aes(x= Sales, y= Profit))+\n",
    "  geom_jitter(alpha=0.5)+geom_rug(position = \"jitter\", size=.09)+\n",
    "  geom_smooth(size=0.7)+\n",
    "  stat_cor(method = \"pearson\", label.x = 500, label.y = 6000)+\n",
    "  labs(title = \"Sales vs Profit\", x=\"Sales\", y=\"Profit\")+\n",
    "  theme_minimal()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6e71c87e",
   "metadata": {
    "papermill": {
     "duration": 0.020466,
     "end_time": "2022-11-13T22:09:11.993051",
     "exception": false,
     "start_time": "2022-11-13T22:09:11.972585",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "A correlation coefficient of 0.48 suggests that there is a link between sales and profit that is reasonably strong. Rises in sales automatically result in gains in profitability, despite the fact that other factors may also impact such increases."
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 268.689709,
   "end_time": "2022-11-13T22:09:12.131673",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-11-13T22:04:43.441964",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
