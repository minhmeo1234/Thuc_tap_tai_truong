create schema thuctap;

use thuctap;

-- 1. Tạo bảng Subjects
CREATE TABLE Subjects (
    subject_id VARCHAR(50) PRIMARY KEY,
    subject_name VARCHAR(255) NOT NULL
);

-- 2. Tạo bảng Chapters
CREATE TABLE Chapters (
    chapter_id VARCHAR(50) PRIMARY KEY,
    subject_id VARCHAR(50),
    chapter_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

-- 3. Tạo bảng Questions
CREATE TABLE Questions (
    question_id VARCHAR(50) PRIMARY KEY,
    chapter_id VARCHAR(50),
    difficulty VARCHAR(20) CHECK (difficulty IN ('easy', 'medium', 'hard')),
    tex TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (chapter_id) REFERENCES Chapters(chapter_id)
);

INSERT INTO Subjects (subject_id, subject_name) VALUES
('MI2026E', 'Probability and statistics'),
('MI2026', 'Xác suất thống kê'),
('MI1026E', 'Calculus II'),
('MI1026', 'Giải tích II'),
('MI2036E', 'Probability statistics and Random signal processes'),
('MI1046E', 'Differential equations and series'),
('MI1111', 'Giải tích I'),
('MI1112', 'Giải tích I'),
('MI1113', 'Giải tích I'),
('MI1120Q', 'Giải tích 2'),
('MI1121', 'Giải tích 2'),
('MI1122', 'Giải tích 2'),
('MI1124', 'Giải tích 2'),
('MI1124E', 'Calculus II'),
('MI1130Q', 'Giải tích III'),
('MI1131', 'Giải tích III'),
('MI1132', 'Giải tích III'),
('MI1133', 'Giải tích III'),
('MI1134', 'Phương trình vi phân và chuỗi'),
('MI1134E', 'Differential equations and series'),
('MI1141', 'Đại số'),
('MI1142', 'Đại số'),
('MI2010', 'Phương pháp tính'),
('MI2020', 'Xác suất thống kê'),
('MI2020E', 'Probability and statistics'),
('MI2021', 'Xác suất thống kê'),
('MI2023E', 'Xác suất thống kê'),
('MI2034', 'Xác suất thống kê'),
('MI2110', 'Phương pháp tính và Matlab'),
('MI3180', 'Xác suất thống kê và quy hoạch thực nghiệm'),
('MI1036' , 'Algebra'),
('MI1016',  'Calculus I');

select * from subjects;

INSERT INTO Chapters (chapter_id, subject_id, chapter_name) VALUES
('MI2026E-1', 'MI2026E', 'Chương 1 - Probability and statistics'),
('MI2026E-2', 'MI2026E', 'Chương 2 - Probability and statistics'),
('MI2026E-3', 'MI2026E', 'Chương 3 - Probability and statistics'),
('MI2026E-4', 'MI2026E', 'Chương 4 - Probability and statistics'),
('MI2026E-5', 'MI2026E', 'Chương 5 - Probability and statistics'),
('MI2026E-6', 'MI2026E', 'Chương 6 - Probability and statistics'),
('MI2026-1', 'MI2026', 'Chương 1 - Xác suất thống kê'),
('MI2026-2', 'MI2026', 'Chương 2 - Xác suất thống kê'),
('MI2026-3', 'MI2026', 'Chương 3 - Xác suất thống kê'),
('MI2026-4', 'MI2026', 'Chương 4 - Xác suất thống kê'),
('MI2026-5', 'MI2026', 'Chương 5 - Xác suất thống kê'),
('MI2026-6', 'MI2026', 'Chương 6 - Xác suất thống kê'),
('MI1026E-1', 'MI1026E', 'Chương 1 - Calculus II'),
('MI1026E-2', 'MI1026E', 'Chương 2 - Calculus II'),
('MI1026E-3', 'MI1026E', 'Chương 3 - Calculus II'),
('MI1026E-4', 'MI1026E', 'Chương 4 - Calculus II'),
('MI1026E-5', 'MI1026E', 'Chương 5 - Calculus II'),
('MI1026E-6', 'MI1026E', 'Chương 6 - Calculus II'),
('MI1026-1', 'MI1026', 'Chương 1 - Giải tích II'),
('MI1026-2', 'MI1026', 'Chương 2 - Giải tích II'),
('MI1026-3', 'MI1026', 'Chương 3 - Giải tích II'),
('MI1026-4', 'MI1026', 'Chương 4 - Giải tích II'),
('MI1026-5', 'MI1026', 'Chương 5 - Giải tích II'),
('MI1026-6', 'MI1026', 'Chương 6 - Giải tích II'),
('MI2036E-1', 'MI2036E', 'Chương 1 - Probability statistics and Random signal processes'),
('MI2036E-2', 'MI2036E', 'Chương 2 - Probability statistics and Random signal processes'),
('MI2036E-3', 'MI2036E', 'Chương 3 - Probability statistics and Random signal processes'),
('MI2036E-4', 'MI2036E', 'Chương 4 - Probability statistics and Random signal processes'),
('MI2036E-5', 'MI2036E', 'Chương 5 - Probability statistics and Random signal processes'),
('MI2036E-6', 'MI2036E', 'Chương 6 - Probability statistics and Random signal processes'),
('MI1046E-1', 'MI1046E', 'Chương 1 - Differential equations and series'),
('MI1046E-2', 'MI1046E', 'Chương 2 - Differential equations and series'),
('MI1046E-3', 'MI1046E', 'Chương 3 - Differential equations and series'),
('MI1046E-4', 'MI1046E', 'Chương 4 - Differential equations and series'),
('MI1046E-5', 'MI1046E', 'Chương 5 - Differential equations and series'),
('MI1046E-6', 'MI1046E', 'Chương 6 - Differential equations and series'),
('MI1111-1', 'MI1111', 'Chương 1 - Giải tích I'),
('MI1111-2', 'MI1111', 'Chương 2 - Giải tích I'),
('MI1111-3', 'MI1111', 'Chương 3 - Giải tích I'),
('MI1111-4', 'MI1111', 'Chương 4 - Giải tích I'),
('MI1111-5', 'MI1111', 'Chương 5 - Giải tích I'),
('MI1111-6', 'MI1111', 'Chương 6 - Giải tích I'),
('MI1112-1', 'MI1112', 'Chương 1 - Giải tích I'),
('MI1112-2', 'MI1112', 'Chương 2 - Giải tích I'),
('MI1112-3', 'MI1112', 'Chương 3 - Giải tích I'),
('MI1112-4', 'MI1112', 'Chương 4 - Giải tích I'),
('MI1112-5', 'MI1112', 'Chương 5 - Giải tích I'),
('MI1112-6', 'MI1112', 'Chương 6 - Giải tích I'),
('MI1113-1', 'MI1113', 'Chương 1 - Giải tích I'),
('MI1113-2', 'MI1113', 'Chương 2 - Giải tích I'),
('MI1113-3', 'MI1113', 'Chương 3 - Giải tích I'),
('MI1113-4', 'MI1113', 'Chương 4 - Giải tích I'),
('MI1113-5', 'MI1113', 'Chương 5 - Giải tích I'),
('MI1113-6', 'MI1113', 'Chương 6 - Giải tích I'),
('MI1120Q-1', 'MI1120Q', 'Chương 1 - Giải tích 2'),
('MI1120Q-2', 'MI1120Q', 'Chương 2 - Giải tích 2'),
('MI1120Q-3', 'MI1120Q', 'Chương 3 - Giải tích 2'),
('MI1120Q-4', 'MI1120Q', 'Chương 4 - Giải tích 2'),
('MI1120Q-5', 'MI1120Q', 'Chương 5 - Giải tích 2'),
('MI1120Q-6', 'MI1120Q', 'Chương 6 - Giải tích 2'),
('MI1121-1', 'MI1121', 'Chương 1 - Giải tích 2'),
('MI1121-2', 'MI1121', 'Chương 2 - Giải tích 2'),
('MI1121-3', 'MI1121', 'Chương 3 - Giải tích 2'),
('MI1121-4', 'MI1121', 'Chương 4 - Giải tích 2'),
('MI1121-5', 'MI1121', 'Chương 5 - Giải tích 2'),
('MI1121-6', 'MI1121', 'Chương 6 - Giải tích 2'),
('MI1122-1', 'MI1122', 'Chương 1 - Giải tích 2'),
('MI1122-2', 'MI1122', 'Chương 2 - Giải tích 2'),
('MI1122-3', 'MI1122', 'Chương 3 - Giải tích 2'),
('MI1122-4', 'MI1122', 'Chương 4 - Giải tích 2'),
('MI1122-5', 'MI1122', 'Chương 5 - Giải tích 2'),
('MI1122-6', 'MI1122', 'Chương 6 - Giải tích 2'),
('MI1124-1', 'MI1124', 'Chương 1 - Giải tích 2'),
('MI1124-2', 'MI1124', 'Chương 2 - Giải tích 2'),
('MI1124-3', 'MI1124', 'Chương 3 - Giải tích 2'),
('MI1124-4', 'MI1124', 'Chương 4 - Giải tích 2'),
('MI1124-5', 'MI1124', 'Chương 5 - Giải tích 2'),
('MI1124-6', 'MI1124', 'Chương 6 - Giải tích 2'),
('MI1124E-1', 'MI1124E', 'Chương 1 - Calculus II'),
('MI1124E-2', 'MI1124E', 'Chương 2 - Calculus II'),
('MI1124E-3', 'MI1124E', 'Chương 3 - Calculus II'),
('MI1124E-4', 'MI1124E', 'Chương 4 - Calculus II'),
('MI1124E-5', 'MI1124E', 'Chương 5 - Calculus II'),
('MI1124E-6', 'MI1124E', 'Chương 6 - Calculus II'),
('MI1130Q-1', 'MI1130Q', 'Chương 1 - Giải tích III'),
('MI1130Q-2', 'MI1130Q', 'Chương 2 - Giải tích III'),
('MI1130Q-3', 'MI1130Q', 'Chương 3 - Giải tích III'),
('MI1130Q-4', 'MI1130Q', 'Chương 4 - Giải tích III'),
('MI1130Q-5', 'MI1130Q', 'Chương 5 - Giải tích III'),
('MI1130Q-6', 'MI1130Q', 'Chương 6 - Giải tích III'),
('MI1131-1', 'MI1131', 'Chương 1 - Giải tích III'),
('MI1131-2', 'MI1131', 'Chương 2 - Giải tích III'),
('MI1131-3', 'MI1131', 'Chương 3 - Giải tích III'),
('MI1131-4', 'MI1131', 'Chương 4 - Giải tích III'),
('MI1131-5', 'MI1131', 'Chương 5 - Giải tích III'),
('MI1131-6', 'MI1131', 'Chương 6 - Giải tích III'),
('MI1132-1', 'MI1132', 'Chương 1 - Giải tích III'),
('MI1132-2', 'MI1132', 'Chương 2 - Giải tích III'),
('MI1132-3', 'MI1132', 'Chương 3 - Giải tích III'),
('MI1132-4', 'MI1132', 'Chương 4 - Giải tích III'),
('MI1132-5', 'MI1132', 'Chương 5 - Giải tích III'),
('MI1132-6', 'MI1132', 'Chương 6 - Giải tích III'),
('MI1133-1', 'MI1133', 'Chương 1 - Giải tích III'),
('MI1133-2', 'MI1133', 'Chương 2 - Giải tích III'),
('MI1133-3', 'MI1133', 'Chương 3 - Giải tích III'),
('MI1133-4', 'MI1133', 'Chương 4 - Giải tích III'),
('MI1133-5', 'MI1133', 'Chương 5 - Giải tích III'),
('MI1133-6', 'MI1133', 'Chương 6 - Giải tích III'),
('MI1134-1', 'MI1134', 'Chương 1 - Phương trình vi phân và chuỗi'),
('MI1134-2', 'MI1134', 'Chương 2 - Phương trình vi phân và chuỗi'),
('MI1134-3', 'MI1134', 'Chương 3 - Phương trình vi phân và chuỗi'),
('MI1134-4', 'MI1134', 'Chương 4 - Phương trình vi phân và chuỗi'),
('MI1134-5', 'MI1134', 'Chương 5 - Phương trình vi phân và chuỗi'),
('MI1134-6', 'MI1134', 'Chương 6 - Phương trình vi phân và chuỗi'),
('MI1134E-1', 'MI1134E', 'Chương 1 - Differential equations and series'),
('MI1134E-2', 'MI1134E', 'Chương 2 - Differential equations and series'),
('MI1134E-3', 'MI1134E', 'Chương 3 - Differential equations and series'),
('MI1134E-4', 'MI1134E', 'Chương 4 - Differential equations and series'),
('MI1134E-5', 'MI1134E', 'Chương 5 - Differential equations and series'),
('MI1134E-6', 'MI1134E', 'Chương 6 - Differential equations and series'),
('MI1141-1', 'MI1141', 'Chương 1 - Đại số'),
('MI1141-2', 'MI1141', 'Chương 2 - Đại số'),
('MI1141-3', 'MI1141', 'Chương 3 - Đại số'),
('MI1141-4', 'MI1141', 'Chương 4 - Đại số'),
('MI1141-5', 'MI1141', 'Chương 5 - Đại số'),
('MI1141-6', 'MI1141', 'Chương 6 - Đại số'),
('MI1142-1', 'MI1142', 'Chương 1 - Đại số'),
('MI1142-2', 'MI1142', 'Chương 2 - Đại số'),
('MI1142-3', 'MI1142', 'Chương 3 - Đại số'),
('MI1142-4', 'MI1142', 'Chương 4 - Đại số'),
('MI1142-5', 'MI1142', 'Chương 5 - Đại số'),
('MI1142-6', 'MI1142', 'Chương 6 - Đại số'),
('MI2010-1', 'MI2010', 'Chương 1 - Phương pháp tính'),
('MI2010-2', 'MI2010', 'Chương 2 - Phương pháp tính'),
('MI2010-3', 'MI2010', 'Chương 3 - Phương pháp tính'),
('MI2010-4', 'MI2010', 'Chương 4 - Phương pháp tính'),
('MI2010-5', 'MI2010', 'Chương 5 - Phương pháp tính'),
('MI2010-6', 'MI2010', 'Chương 6 - Phương pháp tính'),
('MI2020-1', 'MI2020', 'Chương 1 - Xác suất thống kê'),
('MI2020-2', 'MI2020', 'Chương 2 - Xác suất thống kê'),
('MI2020-3', 'MI2020', 'Chương 3 - Xác suất thống kê'),
('MI2020-4', 'MI2020', 'Chương 4 - Xác suất thống kê'),
('MI2020-5', 'MI2020', 'Chương 5 - Xác suất thống kê'),
('MI2020-6', 'MI2020', 'Chương 6 - Xác suất thống kê'),
('MI2020E-1', 'MI2020E', 'Chương 1 - Probability and statistics'),
('MI2020E-2', 'MI2020E', 'Chương 2 - Probability and statistics'),
('MI2020E-3', 'MI2020E', 'Chương 3 - Probability and statistics'),
('MI2020E-4', 'MI2020E', 'Chương 4 - Probability and statistics'),
('MI2020E-5', 'MI2020E', 'Chương 5 - Probability and statistics'),
('MI2020E-6', 'MI2020E', 'Chương 6 - Probability and statistics'),
('MI2021-1', 'MI2021', 'Chương 1 - Xác suất thống kê'),
('MI2021-2', 'MI2021', 'Chương 2 - Xác suất thống kê'),
('MI2021-3', 'MI2021', 'Chương 3 - Xác suất thống kê'),
('MI2021-4', 'MI2021', 'Chương 4 - Xác suất thống kê'),
('MI2021-5', 'MI2021', 'Chương 5 - Xác suất thống kê'),
('MI2021-6', 'MI2021', 'Chương 6 - Xác suất thống kê'),
('MI2023E-1', 'MI2023E', 'Chương 1 - Xác suất thống kê'),
('MI2023E-2', 'MI2023E', 'Chương 2 - Xác suất thống kê'),
('MI2023E-3', 'MI2023E', 'Chương 3 - Xác suất thống kê'),
('MI2023E-4', 'MI2023E', 'Chương 4 - Xác suất thống kê'),
('MI2023E-5', 'MI2023E', 'Chương 5 - Xác suất thống kê'),
('MI2023E-6', 'MI2023E', 'Chương 6 - Xác suất thống kê'),
('MI2034-1', 'MI2034', 'Chương 1 - Xác suất thống kê'),
('MI2034-2', 'MI2034', 'Chương 2 - Xác suất thống kê'),
('MI2034-3', 'MI2034', 'Chương 3 - Xác suất thống kê'),
('MI2034-4', 'MI2034', 'Chương 4 - Xác suất thống kê'),
('MI2034-5', 'MI2034', 'Chương 5 - Xác suất thống kê'),
('MI2034-6', 'MI2034', 'Chương 6 - Xác suất thống kê'),
('MI2110-1', 'MI2110', 'Chương 1 - Phương pháp tính và Matlab'),
('MI2110-2', 'MI2110', 'Chương 2 - Phương pháp tính và Matlab'),
('MI2110-3', 'MI2110', 'Chương 3 - Phương pháp tính và Matlab'),
('MI2110-4', 'MI2110', 'Chương 4 - Phương pháp tính và Matlab'),
('MI2110-5', 'MI2110', 'Chương 5 - Phương pháp tính và Matlab'),
('MI2110-6', 'MI2110', 'Chương 6 - Phương pháp tính và Matlab'),
('MI3180-1', 'MI3180', 'Chương 1 - Xác suất thống kê và quy hoạch thực nghiệm'),
('MI3180-2', 'MI3180', 'Chương 2 - Xác suất thống kê và quy hoạch thực nghiệm'),
('MI3180-3', 'MI3180', 'Chương 3 - Xác suất thống kê và quy hoạch thực nghiệm'),
('MI3180-4', 'MI3180', 'Chương 4 - Xác suất thống kê và quy hoạch thực nghiệm'),
('MI3180-5', 'MI3180', 'Chương 5 - Xác suất thống kê và quy hoạch thực nghiệm'),
('MI3180-6', 'MI3180', 'Chương 6 - Xác suất thống kê và quy hoạch thực nghiệm'),
('MI1036-1', 'MI1036', 'Chương 1 - Algebra'),
('MI1036-2', 'MI1036', 'Chương 2 - Algebra'),
('MI1036-3', 'MI1036', 'Chương 3 - Algebra'),
('MI1036-4', 'MI1036', 'Chương 4 - Algebra'),
('MI1036-5', 'MI1036', 'Chương 5 - Algebra'),
('MI1036-6', 'MI1036', 'Chương 6 - Algebra'),
('MI1016-1', 'MI1016', 'Chương 1 - Calculus I'),
('MI1016-2', 'MI1016', 'Chương 2 - Calculus I'),
('MI1016-3', 'MI1016', 'Chương 3 - Calculus I'),
('MI1016-4', 'MI1016', 'Chương 4 - Calculus I'),
('MI1016-5', 'MI1016', 'Chương 5 - Calculus I'),
('MI1016-6', 'MI1016', 'Chương 6 - Calculus I');

select * from chapters;

INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026E-1-1', 'MI2026E-1', 'easy', "Problem 1: ( 1.5 points) A plane's ""black-box"" is manufactured by only 3 companies: AirCorp, BigSkies, and CharterUS - who make $55 \%, 25 \%$, and $20 \%$ of all the black-boxes made, respectively. Invariably, some of these are defective. Assuming the percentage of defective blackboxes made by AirCorp, BigSkies, and CharterUS are $4 \%, 6 \%$, and $9 \%$, respectively. Find the probability that a randomly selected black-box came from AirCorp given that it was found to be defective.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026E-2-1', 'MI2026E-2', 'easy', "Problem 2: (2.0 points) Suppose X and Y are continuous random variables with the following joint probability density function (pdf):

$$
f(x, y)=\left\{\begin{array}{l}
24 x y \text { if } x>0, y>0 \text { and } x+y<1, \\
0 \text { otherwise. }
\end{array}\right.
$$


Calculate the coefficient of correlation between $X$ and $Y$. Are $X$ and $Y$ independent?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026E-3-1', 'MI2026E-3', 'medium', "Problem 3: (2.0 points) Insurance companies are interested in knowing the population percent of drivers who always buckle up before riding in a car. They randomly surveyed 400 drivers and found that 320 claimed they always buckle up.
a) Find the point estimator of the proportion ( $p$ ) of drivers who claim they always buckle up by the maximum likelihood estimation method.
b) Find a $90 \%$ confidence interval for $p$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026E-4-1', 'MI2026E-4', 'medium', "Problem 4: (2.0 points) The dissolved oxygen content in river water was measured to determine whether a stream had sufficient oxygen to support aquatic life. A pollution control inspector suspected that a river community was releasing amounts of semitreated sewage into a river. To check his theory, he drew ten randomly selected specimens of river water at a location above the town, and another ten below. The dissolved oxygen readings (in parts per million) are as follows:

Below Town: 5.0, 4.7, 4.9, 4.8, 4.9, 4.8, 4.7, 5.0, 4.8, 4.8
Above Town: 4.8, 5.2, 5.0, 4.9, 5.1, 5.1, 4.9, 4.9, 5.4, 5.0
Do the data provide sufficient evidence to indicate that the mean oxygen content below the town is less than the mean oxygen content above at $\alpha=5 \%$ level of significance? Suppose that the oxygen content of river water below or above the town was normally distributed with equal variances.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026E-5-1', 'MI2026E-5', 'hard', "Problem 5: (2.5 points) A study was made on the amount of converted sugar $(Y)$ in a certain process at various temperatures $(X)$. The data were coded and recorded as follows:
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|}
\hline$X$ & 1.0 & 1.1 & 1.2 & 1.3 & 1.4 & 1.5 & 1.6 & 1.7 & 1.8 & 1.9 \\
\hline$Y$ & 8.1 & 7.8 & 8.5 & 9.8 & 9.5 & 8.9 & 8.6 & 10.2 & 9.3 & 9.2 \\
\hline
\end{tabular}
a) Find the estimated regression line of $Y$ based on $X$.
b) Test on the slope coefficient to determine whether there exists a positive linear relationship between $X$ and $Y$ at $5 \%$ level of significance.
Given that: $\Phi(1.28)=0.9 ; \Phi(1.645)=0.95 ; \Phi(1.96)=0.975$ where $\Phi(z)=\int_{-\infty}^z \frac{1}{\sqrt{2 \pi}} e^{-x^2 / 2} d x$ and $t_{18 ; 0.05}=1.734 ; t_{18 ; 0.025}=2.1 ; t_{8 ; 0.05}=1.86 ; t_{8 ; 0.025}=2.31$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026E-1-2', 'MI2026E-1', 'easy', "Problem 1: (1.5 points) A plane's ""black-box"" is manufactured by only 3 companies: AirCorp, BigSkies, and CharterUS - who make $45 \%, 25 \%$, and $30 \%$ of all the black-boxes made, respectively. Invariably, some of these are defective. Assuming the percentage of defective blackboxes made by AirCorp, BigSkies, and CharterUS are $4 \%, 6 \%$, and $8 \%$, respectively. Find the probability that a randomly selected black-box came from BigSkies given that it was found to be defective.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026E-2-2', 'MI2026E-2', 'easy', "Problem 2: (2.0 points) Suppose X and Y are continuous random variables with the following joint probability density function (pdf):

$$
f(x, y)=\left\{\begin{array}{l}
\frac{3}{2} x y \text { if } x>0, y>0 \text { and } x+y<2, \\
0 \text { otherwise }
\end{array}\right.
$$


Calculate the coefficient of correlation between $X$ and $Y$. Are $X$ and $Y$ independent?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026E-3-2', 'MI2026E-3', 'medium', "Problem 3: ( 2.0 points) Insurance companies are interested in knowing the population percent of drivers who always buckle up before riding in a car. They randomly surveyed 500 drivers and found that 420 claimed they always buckle up.
a) Find the point estimator of the proportion (p) of drivers who claim they always buckle up by the maximum likelihood estimation method.
b) Find a $95 \%$ confidence interval for $p$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026E-4-2', 'MI2026E-4', 'medium', "Problem 4: (2.0 points) The dissolved oxygen content in river water was measured to determine whether a stream had sufficient oxygen to support aquatic life. A pollution control inspector suspected that a river community was releasing amounts of semitreated sewage into a river. To check his theory, he drew ten randomly selected specimens of river water at a location above the town, and another ten below. The dissolved oxygen readings (in parts per million) are as follows:

Below Town: 5.1, 4.8, 5.0, 4.9, 5.0, 4.9, 4.8, 5.1, 4.9, 4.9
Above Town: 4.9, 5.3, 5.1, 5.0, 5.2, 5.2, 5.0, 5.0, 5.5, 5.1
Do the data provide sufficient evidence to indicate that the mean oxygen content below the town is less than the mean oxygen content above at $\alpha=5 \%$ level of significance? Suppose that the oxygen content of river water below or above the town was normally distributed with equal variances.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026E-5-2', 'MI2026E-5', 'hard', "Problem 5: (2.5 points) A study was made on the amount of converted sugar $(Y)$ in a certain process at various temperatures $(X)$. The data were coded and recorded as follows:
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|}
\hline$X$ & 1.1 & 1.2 & 1.3 & 1.4 & 1.5 & 1.6 & 1.7 & 1.8 & 1.9 & 2.0 \\
\hline$Y$ & 8.0 & 7.7 & 8.4 & 9.7 & 9.4 & 8.8 & 8.5 & 10.1 & 9.2 & 9.1 \\
\hline
\end{tabular}
a) Find the estimated regression line of $Y$ based on $X$.
b) Test on the slope coefficient to determine whether there exists a positive linear relationship between $X$ and $Y$ at $5 \%$ level of significance.
Given that: $\Phi(1.28)=0.9 ; \Phi(1.645)=0.95 ; \Phi(1.96)=0.975$ where $\Phi(z)=\int_{-\infty}^z \frac{1}{\sqrt{2 \pi}} e^{-x^2 / 2} d x$ and $t_{18 ; 0.05}=1.734 ; t_{18 ; 0.025}=2.1 ; t_{8 ; 0.05}=1.86 ; t_{8 ; 0.025}=2.31$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-1-1', 'MI1026-1', 'easy', "Câu 1 (1đ). Tính thể tích của hình hộp xác định bởi ba vectơ $\vec{a}=$ $(1,2,3), \vec{b}=(1,1,2)$ và $\vec{c}=(2,1,4)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-1-2', 'MI1026-1', 'easy', "Câu 2 (2đ). Tìm vận tốc, gia tốc và tốc độ tại $t=0$ của một chất điểm chuyển động xác định bởi hàm vectơ $\stackrel{\rightharpoonup}{r}(t)=\left(e^{\sin t}, \arctan t, t\right)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-2-1', 'MI1026-2', 'easy', "Câu 3 (2đ). Tính các tích phân sau.
(a) $\iint_D x d x d y$, trong đó $D$ là miền bị chặn bởi $x=y^2$ và $x=1$.
(b) $\iiint_V\left(x^2+y^2\right) d x d y d z$, trong đó $V$ là miền vật thể bị chặn bởi $z=x^2+y^2$ và $z=\sqrt{2-x^2-y^2}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-3-1', 'MI1026-3', 'medium', "Câu 4 ( $1 đ$ ). Tính diện tích của phần mặt phẳng $2 x+y+z=1$ nằm trong mặt trụ $x^2+y^2=1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-4-1', 'MI1026-4', 'medium', "Câu 5 (1đ). Tính $\int_C y d x-x d y$, trong đó $C$ bao gồm cung nhỏ của đường tròn $x^2+y^2=4$ từ $(2,0)$ đến $(0,2)$ và đoạn thẳng từ $(0,2)$ đến $(4,3)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-5-1', 'MI1026-5', 'medium', "Câu 6 (1đ). Cho trường vectơ $\vec{F}=\left(2 x+e^x \sin y\right) \vec{i}+$ $\left(e^x \cos y+e^y z+3 y^2 z\right) \vec{j}+\left(e^y+y^3\right) \vec{k}$. Tính curl $\vec{F}$ và div $\vec{F}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-6-1', 'MI1026-6', 'hard', "Câu 7 (1đ). Tìm khối lượng của mặt cong $S$ xác định bởi các phương trình tham số $x=u v, y=u+v, z=u-v$, trong đó $u^2+v^2 \leq 1$ và $u \geq 0$, với hàm mật độ $\rho(x, y, z)=y^2+z^2$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-6-2', 'MI1026-6', 'hard', "Câu 8 (1đ). Tính $\iint_S x^3 y d y d z-x^2 y^2 d z d x-x^2 y z d x d y$, trong đó $S$ là phần mặt nón $z=\sqrt{x^2+y^2}, 0 \leq z \leq 1$, với định hướng ra ngoài.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-1-3', 'MI1026-1', 'easy', "Câu 1 (1đ). Tính thể tích của hình hộp xác định bởi ba vectơ $\vec{a}=$ $(1,2,3), \vec{b}=(2,1,2)$ và $\vec{c}=(2,1,4)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-1-4', 'MI1026-1', 'easy', "Câu 2 ( 2 đ). Tìm vận tốc, gia tốc và tốc độ tại $t=0$ của một chất điểm chuyển động xác định bởi hàm vectơ $\dot{r}(t)=\left(e^{\cos t}, \arctan t, t\right)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-2-2', 'MI1026-2', 'easy', "Câu 3 (2đ). Tính các tích phân sau.
(a) $\iint_D y d x d y$, trong đó $D$ là miền bị chặn bởi $y=x^2$ và $y=1$.
(b) $\iiint_V\left(x^2+y^2\right) d x d y d z$, trong đó $V$ là miền vật thể bị chặn bởi $z=x^2+y^2$ và $z=\sqrt{6-x^2-y^2}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-3-2', 'MI1026-3', 'medium', "Câu 4 ( 1 d ). Tính diện tích của phần mặt phẳng $x+2 y+z=2$ nằm trong mặt trụ $x^2+y^2=1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-4-2', 'MI1026-4', 'medium', "Câu 5 (1đ). Tính $\int_C y d x-x d y$, trong đó $C$ bao gồm cung nhỏ của đường tròn $x^2+y^2=1$ từ $(1,0)$ đến $(0,1)$ và đoạn thẳng từ $(0,1)$ dến $(4,3)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-5-2', 'MI1026-5', 'medium', "Câu 6 (1đ). Cho trường vectơ $\vec{F}=\left(2 x+e^x \sin y\right) \vec{i}+$ $\left(e^x \cos y+e^y z+3 y^2 z\right) \vec{j}+\left(e^y+y^3+1\right) \vec{k}$. Tính curl $\vec{F}$ và div $\vec{F}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-6-3', 'MI1026-6', 'hard', "Câu 7 (1đ). Tìm khối lượng của mặt cong $S$ xác định bởi các phương trình tham số $x=u v, y=u+v, z=u-v$, trong đó $u^2+v^2 \leq 1$ và $v \geq 0$, với hàm mật độ $\rho(x, y, z)=y^2+z^2$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026-6-4', 'MI1026-6', 'hard', "Câu 8 (1đ). Tính $\iint_S x^3 y d y d z-x^2 y^2 d z d x-x^2 y z d x d y$, trong đó $S$ là phần mặt nón $z=\sqrt{x^2+y^2}, 0 \leq z \leq 2$, với định hướng ra ngoài.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-1-1', 'MI1026E-1', 'easy', "Question 1 (1pt). Find the volume of the parallelepiped determined by the vectors $\vec{a}=(1,2,3), \vec{b}=(1,1,2)$ and $\vec{c}=(2,1,4)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-1-2', 'MI1026E-1', 'easy', "Question 2 (2pts). Let $\vec{r}(t)=\left(e^{\sin t}, \arctan t, t\right)$ be the position vector of a particle. Find its velocity vector, acceleration vector and speed at $t=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-2-1', 'MI1026E-2', 'easy', "Question 3 (2pts). Evaluate the following integrals.
(a) $\iint_D x y d x d y$, where $D$ is bounded by $x=y^2$ and $x=1$.
(b) $\iiint_V\left(x^2+y^2\right) d x d y d z$, where $V$ is a solid bounded by $z=x^2+y^2$ and $z=\sqrt{2-x^2-y^2}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-3-1', 'MI1026E-3', 'medium', "Question 4 (1pt). Find the area of the part of the plane $2 x+y+z=$ 1 that lies inside the cylinder $x^2+y^2=1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-4-1', 'MI1026E-4', 'medium', "Question 5 (1pt). Evaluate $\int_C y d x-x d y$, where $C$ consists of the small arc of the circle $x^2+y^2=4$ from $(2,0)$ to $(0,2)$ and the segment from $(0,2)$ to $(4,3)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-5-1', 'MI1026E-5', 'medium', "Question 6 (1pt). Given a vector field $\vec{F}=\left(2 x+e^x \sin y\right) \vec{i}+$ $\left(e^x \cos y+e^y z+3 y^2 z\right) \vec{j}+\left(e^y+y^3\right) \vec{k}$. Calculate $\operatorname{curl} \vec{F}$ and $\operatorname{div} \vec{F}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-6-1', 'MI1026E-6', 'hard', "Question 7 (1pt). Find the mass of the surface $S$ determined by the parametric equations $x=u v, y=u+v, z=u-v$, where $u^2+v^2 \leq 1$ and $u \geq 0$, with the density $\rho(x, y, z)=y^2+z^2$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-6-2', 'MI1026E-6', 'hard', "Question 8 (1pt). Evaluate $\iint_S x^3 y d y d z-x^2 y^2 d z d x-x^2 y z d x d y$, where $S$ is a part of the cone $z=\sqrt{x^2+y^2}, 0 \leq z \leq 1$ with outward orientation.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-1-3', 'MI1026E-1', 'easy', "Question 1 (1pt). Find the volume of the parallelepiped determined by the vectors $\vec{a}=(1,2,3), \vec{b}=(2,1,2)$ and $\vec{c}=(2,1,4)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-1-4', 'MI1026E-1', 'easy', "Question 2 (2pts). Let $\vec{r}(t)=\left(e^{\cos t}, \arctan t, t\right)$ be the position vector of a particle. Find its velocity vector, acceleration vector and speed at $t=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-2-2', 'MI1026E-2', 'easy', "Question 3 (2pts). Evaluate the following integrals.
(a) $\iint_D y d x d y$, where $D$ is bounded by $y=x^2$ and $y=1$.
(b) $\iiint_V\left(x^2+y^2\right) d x d y d z$, where $V$ is a solid bounded by $z=x^2+y^2$ và $z=\sqrt{6-x^2-y^2}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-3-2', 'MI1026E-3', 'medium', "Question 4 (1pt). Find the area of the part of the plane $x+2 y+z=$ 2 that lies inside the cylinder $x^2+y^2=1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-4-2', 'MI1026E-4', 'medium', "Question 5 (1pt). Evaluate $\int_C y d x-x d y$, where $C$ consists of the small arc of the circle $x^2+y^2=1$ from $(1,0)$ to $(0,1)$ and the segment from $(0,1)$ to $(4,3)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-5-2', 'MI1026E-5', 'medium', "Question 6 (1pt). Given a vector field $\vec{F}=\left(2 x+e^x \sin y\right) \vec{i}+$ $\left(e^x \cos y+e^y z+3 y^2 z\right) \vec{j}+\left(e^y+y^3+1\right) \vec{k}$. Calculate curl $\vec{F}$ and $\operatorname{div} \vec{F}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-6-3', 'MI1026E-6', 'hard', "Question 7 (1pt). Find the mass of the surface $S$ determined by the parametric equations $x=u v, y=u+v, z=u-v$, where $u^2+v^2 \leq 1$ and $v \geq 0$, with the density $\rho(x, y, z)=y^2+z^2$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1026E-6-4', 'MI1026E-6', 'hard', "Question 8 (1pt). Evaluate $\iint_S x^3 y d y d z-x^2 y^2 d z d x-x^2 y z d x d y$, where $S$ is a part of the cone $z=\sqrt{x^2+y^2}, 0 \leq z \leq 2$ with outward orientation.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026-1-1', 'MI2026-1', 'easy', "Bài 1: (1.5 điểm) Giả sử các ""hộp đen"" của máy bay được sản xuất bởi 3 công ty: AirCorp, BigSkies và CharterUS - với tỷ lệ lần lượt là $55 \%, 25 \%$ và $20 \%$. Biết rằng tỷ lệ hộp đen bị lởi do AirCorp, BigSkies và CharterUS sản xuât lần lượt là $4 \%, 6 \%$ và $9 \%$. Một hộp đen được chọn ngẫu nhiên và biết rằng nó được phát hiện là bị lỗi. Hăy tính xác suất nó do công ty AirCorp sản xuất.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026-2-1', 'MI2026-2', 'easy', "Bài 2: (2.0 điểm) Cho ( $\mathrm{X}, \mathrm{Y}$ ) là véctơ ngẫu nhiên liên tục với hàm mật độ xác suất đồng thời cho bời như sau:

$$
f(x, y)=\left\{\begin{array}{l}
24 x y \text { nếu } x>0, y>0 \text { và } x+y<1, \\
0 \text { nếu trái lại. }
\end{array}\right.
$$


Hãy tính hệ số tương quan gifưa X và Y . Hai biến X và Y có độc lập không?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026-3-1', 'MI2026-3', 'medium', "Bài 3: (2.0 điểm) Các công ty bảo hiểm thường quan tâm đến tỷ lệ phần trăm người lái xe luôn thắt dây an toàn trước khi lái xe. Họ khảo sát ngẫu nhiên 400 tài xế và phát hiện ra rằng 320 người khẳng định họ luôn thắt dây an toàn.
a) Hăy tìm ươc lượng điểm của tỷ lệ (p) các lái xe luôn thắt dây an toàn bằng phương pháp hợp lý cực đại.
b) Tìm khoảng ước lượng đối xứng cho tỷ lệp với độ tin cậy $90 \%$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026-4-1', 'MI2026-4', 'medium', "Bài 4: (2.0 điểm) Hàm lượng oxy hòa tan trong nước sông được đo để xác định xem có đủ oxy trong nườc để hỗ trọ đời sống thủy sinh hay không. Một thanh tra môi trường nghi ngờ rằng một cộng đồng ven sông đang thải một lượng nước thải đã qua xử lý vào sông. Ông đã lấy ngẵu nhiên 10 mẫu nước sông ở vị trí phía trên thị trấn và 10 mẫu khác ở phía dưới thị trấn. Chỉ số oxy hòa tan (tính bằng phần triệu) được ghi lại như sau:

Phía dưới: 5.0, 4.7, 4.9, 4.8, 4.9, 4.8, 4.7, 5.0, 4.8, 4.8
Phía trên: 4.8, 5.2, 5.0, 4.9, 5.1, 5.1, 4.9, 4.9, 5.4, 5.0
Dữ liệu có cung cấp đủ bằng chứng để chỉ ra rằng hàm lượng oxy trung bình bên đưới thị trấn thấp hơn hàm lượng oxy trung bình ở phía trên thị trấn ở mức ý nghĩa $5 \%$ hay không? Giả sử hảm lượng oxy của nước sông bên dưởi và bên trên thị trấn cố phân phối chuẩn với phương sai bằng nhau.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026-5-1', 'MI2026-5', 'hard', "Bài 5: (2.5 điếm) Một nghiên cứu về mối quan hệ giữa lượng đường chuyển hóa $(Y)$ trong một quy trình nhất định ở các mức nhiệt độ khác nhau ( $X$ ). Dữ liệu được mã hóa và ghi lại như sau:
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|}
\hline$X$ & 1.0 & 1.1 & 1.2 & 1.3 & 1.4 & 1.5 & 1.6 & 1.7 & 1.8 & 1.9 \\
\hline$Y$ & 8.1 & 7.8 & 8.5 & 9.8 & 9.5 & 8.9 & 8.6 & 10.2 & 9.3 & 9.2 \\
\hline
\end{tabular}
a) Tìm phương trình đường hồi quy thực nghiệm của Y theo X .
b) Hăy kiểm định về hệ số góc của đường hồi quy để xem có mối quan hệ tuyến tính dương giưa Y và X ở mức ý nghĩa $5 \%$ hay không.

$$
\begin{aligned}
& \text { Cho biết: } \Phi(1.28)=0.9 ; \Phi(1.645)=0.95 ; \Phi(1.96)=0.975 \text { với } \Phi(z)=\int_{-\infty}^z \frac{1}{\sqrt{2 \pi}} e^{-x^2 / 2} d x \text { và } \\
& t_{18 ; 0.05}=1.734 ; t_{18 ; 0.025}=2.1 ; t_{8 ; 0.05}=1.86 ; t_{8 ; 0.025}=2.31
\end{aligned}
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026-1-2', 'MI2026-1', 'easy', "Bài 1: (1.5 điểm) Giả sử các ""hộp đen"" của máy bay được sản xuất bởi 3 công ty: AirCorp, BigSkies và CharterUS - với tỷ lệ lần lượt là $45 \%, 25 \%$ và $30 \%$. Biết rằng tỷ lệ hộp đen bị lổi do AirCorp, BigSkies và CharterUS sản xuất lần lượt là $4 \%, 6 \%$ và $8 \%$. Một hộp đen được chọn ngẫu nhiên và biết rằng nó được phát hiện là bị lỗi. Hãy tính xác suất nó do công ty BigSkies sản xuất.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026-2-2', 'MI2026-2', 'easy', "Bài 2: (2.0 điểm) Cho ( $\mathrm{X}, \mathrm{Y}$ ) là véctơ ngẫu nhiên liên tục với hàm mật độ xác suất đồng thời cho bới nhur sau:

$$
f(x, y)=\left\{\begin{array}{l}
\frac{3}{2} x y \text { nếu } x>0, y>0 \text { và } x+y<2 \\
0 \text { nếu trái lại. }
\end{array}\right.
$$


Hăy tính hệ số tương quan giữa X và Y . Hai biến X và Y có độc lập không?:", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026-3-2', 'MI2026-3', 'medium', "Bài 3: (2.0 điẻm) Các công ty bảo hiểm thường quan tâm đến tỷ lệ phần trăm người lái xe luôn thắt dây an toản trước khi lái xe. Họ khảo sát ngẫu nhiên 500 tài xế và phát hiện ra rằng 420 người khẳng định họ luôn thắt dây an toàn.
a) Hăy tìm ước lượng điểm của tỷ lệ (p) các lái xe luôn thắt dây an toàn bằng phương pháp hợp lý çưc đai.
b) Tìm khoảng ước lượng đối xứng cho tỷ lệ $p$ với độ tin cậy $95 \%$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026-4-2', 'MI2026-4', 'medium', "Bài 4: (2.0 điểm) Hàm lượng oxy hòa tan trong nước sông được đo để xác định xem có đủ oxy trong nước để hỗ trợ đời sống thủy sinh hay không. Một thanh tra môi trường nghi ngờ rằng một cộng đồng ven sông đang thải một lượng nước thải đã qua xử lý vào sông. Ông đã lấy ngẫu nhiên 10 mẫu nước sông ở vị trí phía trên thị trấn và 10 mẫu khác ở phía dưới thị trấn. Chỉ số oxy hòa tan (tính bằng phần triệu) được ghi lại như sau:

Phía dưới: 5.1, 4.8, 5.0, 4.9, 5.0, 4.9, 4.8, 5.1, 4.9, 4.9
Phía trên: 4.9, 5.3, 5.1, 5.0, 5.2, 5.2, 5.0, 5.0, 5.5, 5.1
Dữ liệu có cung cấp đủ bằng chứng để chỉ ra rằng hàm lượng oxy trung bình bên đưởi thị trấn thấp hơn hàm lượng oxy trung bình ở phía trên thị trấn ở mức ý nghĩa $5 \%$ hay không? Giả sử hàm lượng oxy của nước sông bên dưới và bên trên thị trấn có phân phối chuẩn với phương sai bằng nhau.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2026-5-2', 'MI2026-5', 'hard', "Bài 5: (2.5 điểm) Một nghiên cứu về mối quan hệ giữa lượng đường chuyển hóa $(Y)$ trong một quy trình nhất định ở các mức nhiệt độ khác nhau $(X)$. Dữ liệu được mã hóa và ghi lại như sau:
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|}
\hline$X$ & 1.1 & 1.2 & 1.3 & 1.4 & 1.5 & 1.6 & 1.7 & 1.8 & 1.9 & 2.0 \\
\hline$Y$ & 8.0 & 7.7 & 8.4 & 9.7 & 9.4 & 8.8 & 8.5 & 10.1 & 9.2 & 9.1 \\
\hline
\end{tabular}
a) Tìm phương trình đường hồi quy thực nghiệm của Y theo X .
b) Hãy kiểm định về hệ số góc của đường hồi quy để xem có mối quan hệ tuyển tính dương giữa Y và $X$ ở mức ý nghĩa $5 \%$ hay không.
Cho biêt: $\Phi(1.28)=0.9 ; \Phi(1.645)=0.95 ; \Phi(1.96)=0.975$ với $\Phi(z)=\int_{-\infty}^z \frac{1}{\sqrt{2 \pi}} e^{-x^2 / 2} d x$ và $t_{18 ; 0.05}=1.734 ; t_{18 ; 0.025}=2.1 ; t_{8 ; 0.05}=1.86 ; t_{8 ; 0.025}=2.31$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2036E-1-1', 'MI2036E-1', 'easy', "Question 1 (2.0 points) In a particular airport, $n$ radar stations operate independently of each other. The probability that a single radar station will detect an arriving airplane is 0.55 .
(a) If six radar stations are in use ( $n=6$ ), calculate the probability that an arriving airplane will be detected by at most two radar stations.
(b) What is the smallest number $n$ of radar stations that must be installed if the probability that an arriving airplane will be detected by at least one radar station is not less than 0.98 .", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2036E-2-1', 'MI2036E-2', 'medium', "Question 2 ( 2.0 points) A local fire station receives on average $\lambda$ rescue telephone calls per day. Assume that the number of these calls in a day has a Poisson distribution. The probability that the local fire station receives at least one rescue telephone call in a day is 0.713495 .
(a) Find the parameter $\lambda$.
(b) Find the probability that the local fire station will receive fewer than three rescue telephone calls over the next four days.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2036E-3-1', 'MI2036E-3', 'medium', "Question 3 ( 3.0 points) The joint probability density function of two continuous random variables $X$ and $Y$ is given by

$$
f_{X, Y}(x, y)= \begin{cases}k x y, & \text { if } 0<x<3,0<y<x \\ 0, & \text { otherwise }\end{cases}
$$

(a) Find the constant $k$.
(b) Find $P(X<1, Y<2)$.
(c) Find $\widehat{y}_M(x)$, the minimum mean square error estimate of $Y$ given $X=x, 0<x<3$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2036E-4-1', 'MI2036E-4', 'hard', "Question 4 (3.0 points) The duration of a voice telephone call is an exponential random variable with expected value of 5 minutes. The duration of a data call is an exponential random variable with expected value of 8 minutes. The null hypothesis of a binary hypothesis test is $H_0$ ""a call is a voice call"". The alternative hypothesis is $H_1$ ""a call is a data call"". The probability of a voice call is $P\left(H_0\right)=0.8$ and the probability of a data call is $P\left(H_1\right)=0.2$. Assume that the cost of a false alarm is $C_{10}=5$ units and the cost of a miss is $C_{01}=8$ units. A binary hypothesis test measures $T$ minutes, the duration of a call. Based on the observation of $T$,
(a) What are $f_{T \mid H_0}(t)$ and $f_{T \mid H_1}(t)$, the likelihood functions of $T$ given $H_0$ and $H_1$, respectively.
(b) Design a minimum cost hypothesis test.
(c) What is the average cost of the minimum cost policy?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2036E-1-2', 'MI2036E-1', 'easy', "Question 1 (2.0 points) In a particular airport, $n$ radar stations operate independently of each other. The probability that a single radar station will detect an arriving airplane is 0.65 .
(a) If six radar stations are in use $(n=6)$, calculate the probability that an arriving airplane will be detected by at most two radar stations.
(b) What is the smallest number $n$ of radar stations that must be installed if the probability that an arriving airplane will be detected by at least one radar station is not less than 0.97 .", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2036E-2-2', 'MI2036E-2', 'medium', "Question 2 (2.0 points) A local fire station receives on average $\lambda$ rescue telephone calls per day. Assume that the number of these calls in a day has a Poisson distribution. The probability that the local fire station receives at least one rescue telephone call in a day is 0.527633 .
(a) Find the parameter $\lambda$.
(b) Find the probability that the local fire station will receive fewer than three rescue telephone calls over the next four days.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2036E-3-2', 'MI2036E-3', 'medium', "Question 3 ( $\mathbf{3 . 0}$ points) The joint probability density function of two continuous random variables $X$ and $Y$ is given by

$$
f_{X, Y}(x, y)= \begin{cases}k x y, & \text { if } 0<x<y, 0<y<3 \\ 0, & \text { otherwise }\end{cases}
$$

(a) Find the constant $k$.
(b) Find $P(X<2, Y<1)$.
(c) Find $\widehat{x}_M(y)$, the minimum mean square error estimate of $X$ given $Y=y, 0<y<3$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2036E-4-2', 'MI2036E-4', 'hard', "Question 4 ( 3.0 points) The duration of a voice telephone call is an exponential random variable with expected value of 4 minutes. The duration of a data call is an exponential random variable with expected value of 7 minutes. The null hypothesis of a binary hypothesis test is $H_0$ ""a call is a voice call"". The alternative hypothesis is $H_1$ ""a call is a data call"". The probability of a voice call is $P\left(H_0\right)=0.8$ and the probability of a data call is $P\left(H_1\right)=0.2$. Assume that the cost of a false alarm is $C_{10}=4$ units and the cost of a miss is $C_{01}=7$ units. A binary hypothesis test measures $T$ minutes, the duration of a call. Based on the observation of $T$,
(a) What are $f_{T \mid H_0}(t)$ and $f_{T \mid H_1}(t)$, the likelihood functions of $T$ given $H_0$ and $H_1$, respectively.
(b) Design a minimum cost hypothesis test.
(c) What is the average cost of the minimum cost policy?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1046E-1-1', 'MI1046E-1', 'easy', "Q1. (1 mark) Test for the absolute convergence, conditional convergence, or divergence of the series

$$
\sum_{n=1}^{+\infty}(-1)^n \sin \frac{1}{\sqrt{2024 n-2023}}
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1046E-2-1', 'MI1046E-2', 'easy', "Q2. (2 marks) Given the series of functions $\sum_{n=0}^{+\infty} 3^n(2 n+1) x^n$,
a) find the domain of convergence of the series, and
b) calculate the sum of the series on its domain.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1046E-3-1', 'MI1046E-3', 'medium', "Q3. (2.5 marks) Solve the following differential equations:
a) $y^{\prime \prime}-y^{\prime}-2 y=(4 x+1) e^{3 x}$.
b) $\left\{\begin{array}{l}x^{\prime \prime}+5 x=f(t) \\ x(0)=0, x^{\prime}(0)=1\end{array}\right.$ where $f(t)= \begin{cases}4 \sin t, & 0<t<\pi \\ 0, & t \geqslant \pi .\end{cases}$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1046E-4-1', 'MI1046E-4', 'medium', "Q4. (1.5 marks) Find the inverse Laplace transform of the fuction $F(s)=\frac{s^2+2 s+1}{\left(s^2+2 s-3\right)\left(s^2+2 s+5\right)}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1046E-5-1', 'MI1046E-5', 'hard', "Q5. (1.5 marks) Given the function $f(x)=x+1, x \in[0, \pi]$, expand the function to a Fourier sine series.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1046E-6-1', 'MI1046E-6', 'hard', "Q6. (1.5 marks) A mass of 100 g stretches a spring 10 cm . The mass is pulled down 3 cm from its equilibrium position and then set in motion with an upward velocity of $10 \mathrm{~cm} / \mathrm{sec}$ in an undamping environment.
a, Formulate the initial value problem that models the motion of the mass over the time $t$.
$b$, Find the solution of the problem.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1046E-1-2', 'MI1046E-1', 'easy', "Q1. (1 mark) Test for the absolute convergence, conditional convergence, or divergence of the series

$$
\sum_{n=1}^{+\infty}(-1)^n \sin \frac{1}{\sqrt[3]{10 n-1}}
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1046E-2-2', 'MI1046E-2', 'easy', "Q2. (2 marks) Given the series of functions $\sum_{n=0}^{+\infty} 4^n(2 n-1) x^n$,
a) find the domain of convergence of the series, and
b) calculate the sum of the series on its domain", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1046E-3-2', 'MI1046E-3', 'medium', "Q3. (2.5 marks) Solve the following differential equations:
a) $y^{\prime \prime}+y^{\prime}-2 y=(8 x+6) e^{2 x}$.
b) $\left\{\begin{array}{l}x^{\prime \prime}+10 x=f(t) \\ x(0)=0, x^{\prime}(0)=1\end{array}\right.$ where $f(t)= \begin{cases}9 \sin t, & 0<t<\pi \\ 0, & t \geqslant \pi .\end{cases}$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1046E-4-2', 'MI1046E-4', 'medium', "Q4. (1.5 marks) Find the inverse Laplace transform of the fuction

$$
F(s)=\frac{s^2-2 s+1}{\left(s^2-2 s-2\right)\left(s^2-2 s+4\right)}
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1046E-5-2', 'MI1046E-5', 'hard', "Q5. (1.5 marks) Given the function $f(x)=x-1, x \in[0, \pi]$, expand the function to a Fourier sine series.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1046E-6-2', 'MI1046E-6', 'hard', "Q6. (1.5 marks) A mass of 100 g stretches a spring 40 cm . The mass is pushed up 3 cm from its equilibrium position and then set in motion with an downward velocity of $10 \mathrm{~cm} / \mathrm{sec}$ in an undamping environment.
a, Formulate the initial value problem that models the motion of the mass over the time $t$.
$b$, Find the solution of the problem.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-1-1', 'MI1111-1', 'easy', "Câu 1 (1đ). Tìm tập xác định của hàm số $y=\arcsin \sqrt{x-1}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-1-2', 'MI1111-1', 'easy', "Câu 2 (1đ). Tính giới hạn $\lim _{x \rightarrow 0} \frac{\ln \left(1+x+x^2\right)}{\sinh (2 x)}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-2-1', 'MI1111-2', 'medium', "Câu 3 (1d). Tìm và phân loại điểm gián doạn của hàm số

$$
y=\frac{1}{3^{1 / x}-1}
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-2-2', 'MI1111-2', 'hard', "Câu 4 (1d). Tìm cực trị của hàm số

$$
z(x, y)=x^2+2 y^2+x y+3 x+5 y
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-3-1', 'MI1111-3', 'easy', "Câu 5 (1d). Tìm khai triển Maclaurin của hàm số sau đến $x^4$ : $f(x)=\sin \left(x+x^2\right)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-3-2', 'MI1111-3', 'medium', "Câu 6 (1d). Tính diện tích phần hình phẳng cho bởi điều kiện: $y \geq x$ và $x^2+y^2 \leq 2 x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-4-1', 'MI1111-4', 'medium', "Câu 7 (1d). Tính tích phân suy rộng $\int_0^{+\infty} \frac{1}{\left(4+x^2\right)^{3 / 2}} d x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-4-2', 'MI1111-4', 'easy', "Câu 8 (1đ). Cho hàm số $y=y(x)$ xác định bởi phương trình $x e^x+y^3+y x^2+2+y=0$. Tính $y^{\prime}(0)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-5-1', 'MI1111-5', 'hard', "Câu 9 (1đ). Tính giới hạn $\lim _{n \rightarrow+\infty} \int_0^{\pi / 2} \sin \left(x^n\right) d x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-6-1', 'MI1111-6', 'hard', "Câu 10 ( 1 d ). Liệu có tồn tại hàm số $f(x)$ liên tục trên $\mathbb{R}$ thỏa mãn hệ thức

$$
f(x+1) f(x)+f(x+1)+1=0 \quad \forall x \in \mathbb{R} ?
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-1-3', 'MI1111-1', 'easy', "Câu 1 (1đ). Tìm tập xác định của hàm số $y=\arcsin \sqrt{x+1}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-1-4', 'MI1111-1', 'easy', "Câu 2 (1đ). Tính giới hạn $\lim _{x \rightarrow 0} \frac{\ln \left(1+x-x^2\right)}{\arctan (2 x)}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-2-3', 'MI1111-2', 'medium', "Câu 3 (1đ). Tìm và phân loại điểm gián đoạn của hàm số

$$
y=\frac{1}{2^{1 / x}-1}
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-2-4', 'MI1111-2', 'hard', "Câu 4 (1d). Tìm cực trị của hàm số

$$
z(x, y)=2 x^2+y^2+x y+5 x+3 y
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-3-3', 'MI1111-3', 'easy', "Câu 5 (1đ). Tìm khai triển Maclaurin của hàm số sau đến $x^4$ : $f(x)=\sin \left(x-x^2\right)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-3-4', 'MI1111-3', 'medium', "Câu 6 (1đ). Tính diện tích phần hình phẳng cho bởi điều kiện: $y \leq x$ và $x^2+y^2 \leq 2 y$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-4-3', 'MI1111-4', 'medium', "Câu 7 (1d). Tính tích phân suy rộng $\int_0^{+\infty} \frac{1}{\left(9+x^2\right)^{3 / 2}} d x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-4-4', 'MI1111-4', 'easy', "Câu 8 (1đ). Cho hàm số $y=y(x)$ xác định bởi phương trình $x e^x+y^3+y x^2-2+y=0$. Tính $y^{\prime}(0)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-5-2', 'MI1111-5', 'hard', "Câu 9 (1đ). Tính giới hạn $\lim _{n \rightarrow+\infty} \int_0^{\pi / 2} \sin \left(x^n\right) d x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1111-6-2', 'MI1111-6', 'hard', "Câu 10 ( 1 đ). Liệu có tồn tại hàm số $f(x)$ liên tục trên $\mathbb{R}$ thỏa mãn hệ thức

$$
f(x+1) f(x)+f(x+1)+1=0 \quad \forall x \in \mathbb{R} ?
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1120Q-1-1', 'MI1120Q-1', 'easy', "Câu 1 (1d). Tính độ cong của đường cong $y=x^3, x \in \mathbb{R}$ tại điểm $M(-1 ;-1)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1120Q-1-2', 'MI1120Q-1', 'easy', "Câu 2 ( 2 đ). Tính các tích phân bội:
a) $\iint_{[0 ; 1] \times[0 ; 1]}\left(x^2+x y+y^2\right) d x d y$.
b) $\iiint_E\left(x^2+y^2+z^2\right) d x d y d z$, ở đó $E$ là phần khối cầu đặc $x^2+y^2+z^2 \leq 4$ trong góc phần tám thứ nhất $(x, y, z \geq 0)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1120Q-2-1', 'MI1120Q-2', 'medium', "Câu 3 (1d). Tính tích phân Euler $\int_0^{+\infty} \frac{x^4}{\left(1+x^3\right)^2} d x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1120Q-3-1', 'MI1120Q-3', 'medium', "Câu 4 ( 2 d). Tính các tích phân đường:
a) $\int_L x^2 y d s$, ở đó $L$ là đoạn thẳng đi từ $(-1 ; 5)$ đến $(1 ; 6)$.
b) $\int_C\left(e^x+x^2 y\right) d x+\left(e^y-x y^2\right) d y$, ơ đó $C$ là đường tròn $x^2+y^2=25$ và định hướng ngược chiều kim đồng hồ.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1120Q-4-1', 'MI1120Q-4', 'easy', "Câu 5 ( 2 d). Tính các tích phân mặt:
a) $\iint_S x y d S$, ở đó $S$ là miền tam giác với các đỉnh $(3 ; 0 ; 0),(0 ; 2 ; 0)$ và $(0 ; 0 ; 1)$.
b) $\iint_S x z d y d z+x d z d x+y d x d y$, ở đó $S$ là một nưa mặt cầu $x^2+y^2+z^2=25, y \geq 0$ và được định hướng theo hướng dương của trục $O y$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1120Q-5-1', 'MI1120Q-5', 'hard', "Câu 6 (1đ). Cho hàm số ba biến số $u(x, y, z)=x^2 y^3 z^4,(x, y, z) \in \mathbb{R}^3$ và vectơ $\vec{l}=(4 ; 3 ; 2)$. Tính đạo hàm theo hướng $\frac{\partial u}{\partial \vec{l}}(1 ; 1 ; 1)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1120Q-6-1', 'MI1120Q-6', 'hard', "Câu 7 (1đ). Sử dụng công thức Stokes để tính tích phân đường trong không gian $\int_C\left(x+y^2\right) d x+\left(y+z^2\right) d y+\left(z+x^2\right) d z$, ở đó $C$ là tam giác với các đinh $(1 ; 0 ; 0),(0 ; 1 ; 0)$ và $(0 ; 0 ; 1)$ và được định hướng ngược chiểu kim đổng hồ nhìn từ chiều dương của trục Oz .", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1120Q-1-3', 'MI1120Q-1', 'easy', "Câu 1 (1đ). Tính độ cong của đường cong $y=x^4, x \in \mathbb{R}$ tại điểm $M(-1 ; 1)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1120Q-1-4', 'MI1120Q-1', 'easy', "Câu 2 (2d). Tính các tích phân bội:
a) $\iiint_{[0 ; 1] \times[0 ; 1]}\left(x^2-x y+y^2\right) d x d y$.
b) $\iiint_E\left(x^2+y^2+z^2\right) d x d y d z$, ở đó $E$ là phần khối cầu đặc $x^2+y^2+z^2 \leq 9$ trong góc phần tám thứ nhất $(x, y, z \geq 0)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1120Q-2-2', 'MI1120Q-2', 'medium', "Câu 3 (1d). Tính tích phân Euler $\int_0^{+\infty} \frac{x^5}{\left(1+x^4\right)^2} d x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1120Q-3-2', 'MI1120Q-3', 'medium', "Câu 4 (2đ). Tính các tích phân đường:
a) $\int_L x y^2 d s$, ở đó $L$ là đoạn thẳng đi từ $(1 ; 6)$ đến $(-1 ; 5)$.
b) $\int_C\left(e^x-x^2 y\right) d x+\left(e^y+x y^2\right) d y$, ở đó $C$ là đường tròn $x^2+y^2=25$ và được định hướng thuận chiều kim đồng hồ.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1120Q-4-2', 'MI1120Q-4', 'easy', "Câu 5 ( 2 đ). Tính các tích phân mặt:
a) $\iint_S x y d S$, ở đó $S$ là miền tam giác với các đỉnh $(1 ; 0 ; 0),(0 ; 2 ; 0)$ và $(0 ; 0 ; 3)$.
b) $\iint_S x d y d z+y d z d x+z^4 d x d y$, ơ đó $S$ là phần của mặt nón $z=\sqrt{x^2+y^2}, z \leq 1$ và được định hướng theo chiều âm cùa trục Oz.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1120Q-5-2', 'MI1120Q-5', 'hard', "Câu 6 (1d). Cho hàm số ba biến số $u(x, y, z)=x^4 y^3 z^2,(x, y, z) \in \mathbb{R}^3$ và vectơ $\vec{l}=(2 ; 3 ; 4)$. Tính đạo hàm theo hướng $\frac{\partial u}{\partial \vec{l}}(1 ; 1 ; 1)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1120Q-6-2', 'MI1120Q-6', 'hard', "Câu 7 (1d). Sử dụng công thức Stokes để tính tích phân đường trong không gian $\int_C\left(x+y^2\right) d x+\left(y+z^2\right) d y+\left(z+x^2\right) d z$, ơ đó $C$ là tam giác với các đỉhh $(1 ; 0 ; 0),(0 ; 1 ; 0)$ và $(0 ; 0 ; 1)$ và được định hướng ngược chiểu kim đồng hồ nhìn từ chiều dương của trục $O z$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-1-1', 'MI1121-1', 'easy', "Câu 1 (1đ). Viết phương trình tiếp diện và pháp tuyến của mặt cong $(S) x^2+y^3-2 z=1$ tại điểm $M(2 ; 1 ; 2)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-1-2', 'MI1121-1', 'easy', "Câu 2 (1d). Tính đạo hàm theo hướng $\vec{\ell}$ của hàm số $u(x, y, z)=$ $\ln \left(x^2+y^2+y z\right)$ tại điểm $A(1 ; 1 ; 1)$ với $\vec{\ell}=\overrightarrow{A B}$ và $B(-1 ; 2 ; 3)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-2-1', 'MI1121-2', 'medium', "Câu 3 (1đ). Tính $I=\int_C y d x+2 x d y$, với $C: x=t^3, y=(t-1)^2$ đi từ điểm $A(1 ; 0)$ đến điểm $B(0 ; 1)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-2-2', 'MI1121-2', 'hard', "Câu 4 (1d). Tính tích phân $I=\int_0^1 d x \int_{x^2}^1|x-y| d y$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-3-1', 'MI1121-3', 'easy', "Câu 5 (1đ). Tính thể tích phần hình cầu $\Omega: x^2+y^2+z^2 \leq 4$ nằm trong mặt nón $z=\sqrt{3\left(x^2+y^2\right)}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-3-2', 'MI1121-3', 'medium', "Câu 6 (1d). Tính tích phân $I=\int_0^1 x^7 \cdot \sqrt[3]{1-x^3} d x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-4-1', 'MI1121-4', 'medium', "Câu 7 (1d). Biểu thức $\left(a e^y+2 x y^3\right) d x+\left(x e^y+b x^2 y^2+1\right) d y$, với các số thực $a, b$, là vi phân toàn phẩn của hàm số $u(x, y)$. Tìm $a, b$ và hàm số $u(x, y)$ đó.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-4-2', 'MI1121-4', 'easy', "Câu 8 (1d). Tính tích phân $I=\iiint_{\Omega} \frac{1}{1+z^7} d x d y d z \quad$ với $\Omega=\left\{(x, y, z) \in \mathbb{R}^3: 0 \leq x \leq 1,0 \leq y \leq x, \sqrt[3]{x} \leq z \leq 1\right\}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-5-1', 'MI1121-5', 'hard', "Câu 9 (1d). Cho $C$ là nửa đường tròn $x^2+y^2=2 x(x \geq 1)$ đi từ $A(1 ;-1)$ dến $B(1 ; 1)$. Tính

$$
I=\int_C\left(x e^{\sin x}-y^2\right) d x+\left(y \ln \left(y^2+1\right)+x^2+x\right) d y
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-6-1', 'MI1121-6', 'hard', "Câu 10 (1d). Cho $(S)$ là biên của miền $\Omega: 1 \leq z \leq 4-x^2-y^2$, hướng ra ngoài. Tính thông lượng của trường vectơ $\vec{F}=x^3 \vec{i}+y^2 z \vec{j}+x y z \vec{k}$ qua mặt $(S)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-1-3', 'MI1121-1', 'easy', "Câu 1 (1d). Viết phương trình tiếp diện và pháp tuyến của mặt cong $(S) 2 x-y^2+z^3=1$ tại điểm $N(2 ; 2 ; 1)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-1-4', 'MI1121-1', 'easy', "Câu 2 (1d). Tính đạo hàm theo hướng $\vec{\ell}$ của hàm số $u(x, y, z)=$ $\ln \left(x y+y^2+z^2\right)$ tại điểm $A(-1 ; 1 ; 1)$ với $\vec{\ell}=\overrightarrow{A B}$ và $B(1 ; 2 ; 3)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-2-3', 'MI1121-2', 'medium', "Câu 3 (1đ). Tính $I=\int_C 2 y d x+x d y$, với $C: x=t^3, y=(t+1)^2$ đi từ điểm $A(1 ; 4)$ đến điểm $B(0 ; 1)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-2-4', 'MI1121-2', 'hard', "Câu 4 (1d). Tính tích phân $I=\int_0^1 d y \int_{y^2}^1|x-y| d x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-3-3', 'MI1121-3', 'easy', "Câu 5 (1đ). Tính thể tích phần hình cầu $\Omega: x^2+y^2+z^2 \leq 4$ nằm trong mặt nón $z=\sqrt{\frac{x^2+y^2}{3}}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-3-4', 'MI1121-3', 'medium', "Câu 6 (1d). Tính tích phân $I=\int_0^1 x^6 \cdot \sqrt[4]{1-x^4} d x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-4-3', 'MI1121-4', 'medium', "Câu 7 (1d). Biểu thức $\left(y e^x+a x^2 y^2+1\right) d x+\left(b e^x+2 x^3 y\right) d y$, với các số thực $a, b$, là vi phân toàn phần của hàm số $u(x, y)$. Tìm $a, b$ và hàm số $u(x, y)$ đó.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-4-4', 'MI1121-4', 'easy', "Câu 8 (1d). Tính tích phân $I=\iiint_{\Omega} \frac{1}{1+z^5} d x d y d z \quad$ với $\Omega=\left\{(x, y, z) \in \mathbb{R}^3: 0 \leq x \leq 1,0 \leq y \leq x, \sqrt{x} \leq z \leq 1\right\}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-5-2', 'MI1121-5', 'hard', "Câu 9 (1d). Cho $C$ là nửa trên đường tròn $x^2+y^2=2 y$ đi từ $A(1 ; 1)$ đến $B(-1 ; 1)$. Tính

$$
I=\int_C\left(x \ln \left(x^2+1\right)+y^2+y\right) d x+\left(y e^{\sin y}+x^2\right) d y
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1121-6-2', 'MI1121-6', 'hard', "Câu 10 (1d). Cho $(S)$ là biên của miền $\Omega: 3 \leq z \leq 4-x^2-y^2$, hướng ra ngoài. Tính thông lượng của trường vectơ $\vec{F}=x^3 \vec{i}+y^2 z \vec{j}+x y z \vec{k}$ qua mặt $(S)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-1-1', 'MI1122-1', 'easy', "Câu 1 (1đ). Tìm cực trị của hàm số

$$
z=x^4+y^4+8 x^2+2 y^2+1
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-1-2', 'MI1122-1', 'easy', "Câu 2 (1đ). Tính độ cong của đường cong $y=x^3+x+1$ tại điểm $A(1,3)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-2-1', 'MI1122-2', 'medium', "Câu 3 (1đ). Viết phương trình tiếp tuyến và pháp diện của đường cong $x=2 \cos t, y=\sin t, z=2 \sin t+2$ tai điểm ứng với $t=\pi$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-2-2', 'MI1122-2', 'hard', "Câu 4 (1đ). Đổi thứ tự lấy tích phân $\int_{-2}^2 d y \int_{y^2-5}^{-1} f(x, y) d x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-3-1', 'MI1122-3', 'easy', "Câu 5 (1d). Tính $\int_C x^2 d s$, với $C$ là đường cong

$$
x=e^t, y=3 t-3(0 \leq t \leq 1)
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-3-2', 'MI1122-3', 'medium', "Câu 6 (1đ). Tính đạo hàm của hàm $u=e^{x^2+y}+y^2+2 x z^3+1$ tại điểm $A(1,-1,1)$ theo hướng $\overrightarrow{A B}$ với $B(2,1,3)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-4-1', 'MI1122-4', 'medium', "Câu 7 (1d). Trường véc tơ $\vec{F}=(y z+1) \vec{i}+x z \vec{j}+x y \vec{k}$ có phải là trường thế không? Tìm hàm thế vị nếu có.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-4-2', 'MI1122-4', 'easy', "Câu 8 (1d). Phương trình $x^3+4 x y^2+2 y z+z^3=2$ xác định hàm ẩn $z=z(x, y)$. Tính $\frac{\partial z}{\partial x}(1,0), \frac{\partial z}{\partial y}(1,0)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-5-1', 'MI1122-5', 'hard', "Câu 9 (1đ). Cho $\Omega$ giới hạn bởi các mặt $z^2=5+x^2+y^2$ và $z=3$. Tính thể tích khối $\Omega$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-6-1', 'MI1122-6', 'hard', "Câu 10 (1đ). Tính $\int_C y d x-x d y$, với $C$ là là biên của miền xác định bởi $1 \leq x y \leq 4, x \leq y \leq 4 x$, có hướng ngược chiều quay của kim đồng hồ.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-1-3', 'MI1122-1', 'easy', "Câu 1 (1đ). Tìm cực trị của hàm số

$$
z=x^4+y^4+2 x^2+8 y^2+2
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-1-4', 'MI1122-1', 'easy', "Câu 2 (1đ). Tính độ cong của đường cong $y=x^3-x+1$ tại điểm $A(1,1)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-2-3', 'MI1122-2', 'medium', "Câu 3 (1đ). Viết phương trình tiếp tuyến và pháp diện của đường cong $x=2 \sin t, y=\cos t, z=\sin t-2$ tại điểm ứng với $t=\pi$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-2-4', 'MI1122-2', 'hard', "Câu 4 (1đ). Đổi thứ tự lấy tích phân $\int_{-2}^2 d y \int_{-5}^{-y^2-1} f(x, y) d x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-3-3', 'MI1122-3', 'easy', "Câu 5 (1d). Tính $\int_C y^2 d s$, với $C$ là đường cong

$$
x=2 t+3, y=e^t(0 \leq t \leq 1)
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-3-4', 'MI1122-3', 'medium', "Câu 6 (1đ). Tính đạo hàm của hàm $u=e^{x^2-y}+y^3+3 x z^2+3$ tại điểm $A(-1,1,1)$ theo hướng $\overrightarrow{A B}$ với $B(1,3,2)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-4-3', 'MI1122-4', 'medium', "Câu 7 (1d). Trường véc tơ $\vec{F}=y z \vec{i}+(x z+2) \vec{j}+x y \vec{k}$ có phải là trường thế không? Tìm hàm thế vị nếu có.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-4-4', 'MI1122-4', 'easy', "Câu 8 (1đ). Phương trình $2 x^2 y+2 y^2+x^2 z+z^3=3$ xác định hàm ẩn $z=z(x, y)$. Tính $\frac{\partial z}{\partial x}(0,1), \frac{\partial z}{\partial y}(0,1)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-5-2', 'MI1122-5', 'hard', "Câu 9 (1đ). Cho $\Omega$ giới hạn bởi các mặt $z^2=3+x^2+y^2$ và $z=2$. Tính thể tích khối $\Omega$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1122-6-2', 'MI1122-6', 'hard', "Câu 10 (1đ). Tính $\int_C y d x-2 x d y$, với $C$ là biên của miền xác định bởi $1 \leq x y \leq 3, x \leq y \leq 3 x$, có hướng ngược chiều quay của kim đồng hồ.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-1-1', 'MI1124-1', 'easy', "Câu 1 (1đ). Viết phương trình pháp tuyến và tiếp diện của mặt cong $x^2-2 y-3 z^2=-2$ tai $A(2 ;-3 ;-2)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-1-2', 'MI1124-1', 'easy', "Câu 2 (1đ). Tính tích phân $\iint_D\left(2 x^2-3 y^2\right) d x d y$ với $D$ là miền phẳng giới hạn bởi các đường $x=0, y=0, x+y=1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-2-1', 'MI1124-2', 'medium', "Câu 3 (1đ). Tính thể tích vật thể $V$ xác định bởi: $1 \leq x \leq 2$; $z \leq y^2 \leq 2 z ; y \leq z^2 \leq 2 y$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-2-2', 'MI1124-2', 'hard', "Câu 4 (1d). Tính $\int_0^2 \frac{x^3 d x}{\sqrt[3]{8-x^3}}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-3-1', 'MI1124-3', 'easy', "Câu 5 (1d). Tính $\int_C(3 x-2 y) d s, C$ là đường tròn có phương trình: $x^2+y^2=8 x-6 y$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-3-2', 'MI1124-3', 'medium', "Câu 6 (1d). Tính diện tích của phần mặt paraboloid $z=2-x^2-y^2$ nằm trong hình trụ $x^2+y^2 \leq 1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-4-1', 'MI1124-4', 'medium', "Câu 7 (1d). Tính thông lượng của trường véctơ $\vec{F}=\left(3 x z^2+3 x^2\right) \vec{i}+\left(y^3+2 x y\right) \vec{j}+\left(x+3 z x^2\right) \vec{k}$ qua mặt cầu $x^2+y^2+z^2=1$, hướng ra ngoài.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-4-2', 'MI1124-4', 'easy', "Câu 8 (1đ). Cho hàm $u=x^3+2 y z+z^2$ và các điểm $A(1 ;-1 ; 1), B(2 ; 1 ;-1)$. Tìm đạo hàm của hàm $u$ tại $A$ theo hướng $\overrightarrow{A B}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-5-1', 'MI1124-5', 'hard', "Câu 9 (1d). Tính $\oint_C e^{-x} \arcsin x y d x+\left(x+e^y \arccos x y\right) d y$, với $C$ là đường có phương trình $|x|+|y|=1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-6-1', 'MI1124-6', 'hard', "Câu 10 (1đ). Chứng minh rằng hàm số $f(x)=\int_0^2 \frac{x\left(t^2+1\right)}{x^2+t^2} d t$ không liên tục tại $x=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-1-3', 'MI1124-1', 'easy', "Câu 1 (1đ). Viết phương trình pháp tuyến và tiếp diện của mặt cong $x^2+2 y^2-3 z^2=14$ tai $A(3 ;-2 ; 1)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-1-4', 'MI1124-1', 'easy', "Câu 2 (1đ). Tính tích phân $\iint_D\left(x^2-3 y^2\right) d x d y$ với $D$ là miền phẳng giới hạn bởi các đường $x=0, y=0, x-y=1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-2-3', 'MI1124-2', 'medium', "Câu 3 (1đ). Tính thể tích vật thể $V$ xác định bởi: $1 \leq y \leq 3$; $z \leq x^2 \leq 3 z ; x \leq z^2 \leq 3 x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-2-4', 'MI1124-2', 'hard', "Câu 4 (1d). Tính $\int_0^3 \frac{x^3 d x}{\sqrt[3]{27-x^3}}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-3-3', 'MI1124-3', 'easy', "Câu 5 (1đ). Tính $\int_C(3 y-2 x) d s, C$ là đường tròn có phương trình: $x^2+y^2=6 x-8 y$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-3-4', 'MI1124-3', 'medium', "Câu 6 (1đ). Tính diện tích của phần mặt paraboloid $y=4-x^2-z^2$ nằm trong hình trụ $x^2+z^2 \leq 1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-4-3', 'MI1124-4', 'medium', "Câu 7 (1d). Tính thông lượng của trường véctơ $\vec{F}=\left(3 x y^2+3 x^2\right) \vec{i}+\left(3 y z^2+2 x y\right) \vec{j}+\left(y+3 z x^2\right) \vec{k}$ qua mặt cầu: $x^2+y^2+z^2=1$, hướng ra ngoài.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-4-4', 'MI1124-4', 'easy', "Câu 8 (1d). Cho hàm $u=x^3+2 y z+z^2$ và các điểm $A(1 ;-1 ; 1), B(2 ; 1 ;-1)$. Tìm đạo hàm của hàm $u$ tại $B$ theo hướng $\overrightarrow{B A}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-5-2', 'MI1124-5', 'hard', "Câu 9 (1d). Tính $\oint_C\left(y+e^{-x} \arcsin x y\right) d x+\left(e^y \arccos x y\right) d y$, với $C$ là đường có phương trình $|x|+|y|=1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124-6-2', 'MI1124-6', 'hard', "Câu 10 (1d). Chứng minh rằng hàm số $f(x)=\int_0^3 \frac{x\left(3 t^2+1\right)}{x^2+t^2} d t$ không liên tục tại $x=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-1-1', 'MI1124E-1', 'easy', "Question 1 ( 1 pt ). Find the tangent plane and normal line to $x^2-2 y-3 z^2=-2$ at the point $A(2 ;-3 ;-2)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-1-2', 'MI1124E-1', 'easy', "Question 2 (1pt). Calculate the integral $\iint_D\left(2 x^2-3 y^2\right) d x d y$ where $D$ is the region bounded by the lines $x=0, y=0$ and $x+y=1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-2-1', 'MI1124E-2', 'medium', "Question 3 ( 1 pt ). Calculate the volume of the solid $V$ defined by: $1 \leq x \leq 2 ; z \leq y^2 \leq 2 z ; y \leq z^2 \leq 2 y$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-2-2', 'MI1124E-2', 'hard', "Question 4 (1pt). Calculate $\int_0^2 \frac{x^3 d x}{\sqrt[3]{8-x^3}}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-3-1', 'MI1124E-3', 'easy', "Question 5 (1pt). Calculate $\int_C(3 x-2 y) d s, C$ is the circle with the equation: $x^2+y^2=8 x-6 y$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-3-2', 'MI1124E-3', 'medium', "Question $6(1 \mathrm{pt})$. Calculate the area of the part of the paraboloid $z=2-x^2-y^2$ that lies within the cylinder $x^2+y^2 \leq 1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-4-1', 'MI1124E-4', 'medium', "Question 7 ( 1 pt ). Calculate the flux of the vector field $\vec{F}=\left(3 x z^2+3 x^2\right) \vec{i}+\left(y^3+2 x y\right) \vec{j}+\left(x+3 z x^2\right) \vec{k}$ through the sphere $x^2+y^2+z^2=1$, outward orientation.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-4-2', 'MI1124E-4', 'easy', "Question 8 (1pt). Given the function $u=x^3+2 y z+z^2$ and the points $A(1 ;-1 ; 1), B(2 ; 1 ;-1)$. Find the derivative of the function $u$ at $A$ in the direction of $\overrightarrow{A B}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-5-1', 'MI1124E-5', 'hard', "Question 9 (1pt). Calculate

$$
\oint_C e^{-x} \arcsin x y d x+\left(x+e^y \arccos x y\right) d y
$$

where $C$ is the curve with the equation $|x|+|y|=1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-6-1', 'MI1124E-6', 'hard', "Question $10(1 \mathrm{pt})$. Prove that the function $f(x)=\int_0^2 \frac{x\left(t^2+1\right)}{x^2+t^2} d t$ is not continuous at $x=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-1-3', 'MI1124E-1', 'easy', "Question 1 (1pt). Find the tangent plane and normal line to $x^2+2 y^2-3 z^2=14$ at the point $A(3 ;-2 ; 1)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-1-4', 'MI1124E-1', 'easy', "Question 2 (1pt). Calculate the integral $\iint_D\left(x^2-3 y^2\right) d x d y$ where $D$ is the region bounded by the lines $x=0, y=0$ and $x-y=1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-2-3', 'MI1124E-2', 'medium', "Question 3 ( 1 pt ). Calculate the volume of the solid $V$ defined by: $1 \leq y \leq 3 ; z \leq x^2 \leq 3 z ; x \leq z^2 \leq 3 x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-2-4', 'MI1124E-2', 'hard', "Question 4 (1pt). Calculate $\int_0^3 \frac{x^3 d x}{\sqrt[3]{27-x^3}}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-3-3', 'MI1124E-3', 'easy', "Question $5(1 \mathrm{pt})$. Calculate $\int_C(3 y-2 x) d s, C$ is the circle with the equation: $x^2+y^2=6 x-8 y$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-3-4', 'MI1124E-3', 'medium', "Question $6(1 \mathrm{pt})$. Calculate the area of the part of the paraboloid $y=4-x^2-z^2$ that lies within the cylinder $x^2+z^2 \leq 1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-4-3', 'MI1124E-4', 'medium', "Question 7 ( 1 pt ). Calculate the flux of the vector field $\vec{F}=\left(3 x y^2+3 x^2\right) \vec{i}+\left(3 y z^2+2 x y\right) \vec{j}+\left(y+3 z x^2\right) \vec{k}$ through the sphere $x^2+y^2+z^2=1$, outward orientation.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-4-4', 'MI1124E-4', 'easy', "Question 8 (1pt). Given the function $u=x^3+2 y z+z^2$ and the points $A(1 ;-1 ; 1), B(2 ; 1 ;-1)$. Find the derivative of the function $u$ at $B$ in the direction of $\overrightarrow{B A}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-5-2', 'MI1124E-5', 'hard', "Question 9 (1pt). Calculate

$$
\oint_C\left(y+e^{-x} \arcsin x y\right) d x+\left(e^y \arccos x y\right) d y
$$

where $C$ is the curve with the equation $|x|+|y|=1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1124E-6-2', 'MI1124E-6', 'hard', "Question $10(1 \mathbf{p t})$. Prove that the function $f(x)=\int_0^3 \frac{x\left(3 t^2+1\right)}{x^2+t^2} d t$ is not continuous at $x=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1130Q-1-1', 'MI1130Q-1', 'easy', "Câu 1 (2đ). Xét sự hội tụ, phân kì của các chuỗi số sau
a) $\sum_{n=2}^{\infty} \frac{1}{(2 n+1) \ln n}$
b) $\sum_{n=1}^{\infty} \sin \left(\frac{(-1)^n}{n}+n \pi\right)$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1130Q-1-2', 'MI1130Q-1', 'easy', "Câu 2 (1d). Tìm miền hội tụ của chuỗi hàm số

$$
\sum_{n=1}^{\infty}\left(\frac{2 n+1}{n+3}\right)^n(2 x+1)^n
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1130Q-2-1', 'MI1130Q-2', 'medium', "Câu 3 (1đ). Tính tổng: $\sum_{n=0}^{\infty} \frac{1}{3^n(n+1)!}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1130Q-3-1', 'MI1130Q-3', 'medium', "Câu 4 (1d). Khai triển hàm số $f(x)=\ln (2+x)$ thành chuỗi Maulaurin.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1130Q-4-1', 'MI1130Q-4', 'easy', "Câu 5 (3d). Giải các phương trình vi phân sau:
a) $y^{\prime}=y^2-4 y+3$.
b) $d y+(2 y-4 x) d x=0, y(0)=1$.
c) $y^{\prime \prime}+y^{\prime}=1+4 \sin x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1130Q-5-1', 'MI1130Q-5', 'hard', "Câu 6 (1d). Tính $\mathcal{L}^{-1}\left(\frac{s+3}{s^2-2 s+10}\right)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1130Q-6-1', 'MI1130Q-6', 'hard', "Câu 7 (1đ). Giải bài toán giá trị ban đầu

$$
\left\{\begin{array}{l}
x^{\prime \prime}+16 x=f(t) \\
x(0)=x^{\prime}(0)=0
\end{array} \text { ở đó } f(t)=\left\{\begin{array}{l}
\sin 2 t, t \geqslant \frac{\pi}{2} \\
0, \quad 0<t<\frac{\pi}{2}
\end{array}\right.\right.
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1130Q-1-3', 'MI1130Q-1', 'easy', "Câu 1 (2d). Xét sự hội tụ, phân kì của các chuỗi số sau
a) $\sum_{n=2}^{\infty} \frac{1}{n \ln (2 n+1)}$
b) $\sum_{n=1}^{\infty} \sin \left(\frac{(-1)^n}{\sqrt{n}}+n \pi\right)$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1130Q-1-4', 'MI1130Q-1', 'easy', "Câu 2 (1đ). Tìm miền hội tụ của chuỗi hàm số

$$
\sum_{n=1}^{\infty}\left(\frac{n+1}{2 n+3}\right)^n(2 x-1)^n
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1130Q-2-2', 'MI1130Q-2', 'medium', "Câu 3 (1đ). Tính tổng: $\sum_{n=0}^{\infty} \frac{1}{2^n(n+1)!}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1130Q-3-2', 'MI1130Q-3', 'medium', "Câu 4 (1đ). Khai triển hàm số $f(x)=\ln (5-x)$ thành chuỗi Maulaurin.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1130Q-4-2', 'MI1130Q-4', 'easy', "Câu 5 (3d). Giải các phương trình vi phân sau:
a) $y^{\prime}=y^2+4 y+3$.
b) $d y-(2 y-4 x) d x=0, y(0)=3$.
c) $y^{\prime \prime}+y^{\prime}=3+2 \sin x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1130Q-5-2', 'MI1130Q-5', 'hard', "Câu 6 (1d). Tính $\mathcal{L}^{-1}\left(\frac{s-3}{s^2+2 s+10}\right)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1130Q-6-2', 'MI1130Q-6', 'hard', "Câu 7 (1đ). Giải bài toán giá trị ban đầu

$$
\left\{\begin{array}{l}
x^{\prime \prime}+16 x=f(t) \\
x(0)=x^{\prime}(0)=0
\end{array} \text { ơ đó } f(t)=\left\{\begin{array}{l}
\cos 2 t, 0<t<\frac{\pi}{2} \\
0, \quad t \geqslant \frac{\pi}{2}
\end{array}\right.\right.
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1131-1-1', 'MI1131-1', 'easy', "Câu 1 (2đ). Xét sự hội tụ, phân kỳ của các chuổi sổ sau.
a) $\sum_{n=1}^{\infty} \frac{(n+1)^2}{2^n+n}$
b) $\sum_{n=2}^{\infty} \ln \left(1+\frac{(-1)^n}{n^{1 / 3}}\right)$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1131-1-2', 'MI1131-1', 'easy', "Câu 2 (1đ). Tìm miền hội tụ của chuỗi hàm số $\sum_{n=1}^{\infty}\left(\frac{100-2 n}{n+3}\right)^n x^n$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1131-2-1', 'MI1131-2', 'medium', "Câu 3 (3d). Giải các phương trình vi phân sau.
a) $y^{\prime}=y^2-2 y+1, y(0)=2$;
b) $x^2 y^{\prime}+8 x y=10 y^3, y(1)=-1 / 2$;
c) $y^{\prime \prime}-4 y^{\prime}+3 y=\left(16 x^7+56 x^6+2\right) e^{3 x}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1131-3-1', 'MI1131-3', 'medium', "Câu 4 (1d). Khai triển hàm số $f(x)=\cos (3 x), 0<x<\pi$, thành chuỗi Fourier chỉ chứa các hàm sin.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1131-4-1', 'MI1131-4', 'easy', "Câu 5 (1d). Tìm biến đổi Laplace $\mathcal{L}\left\{\left(e^{-t}+1\right)^2 \sin (3 t)\right\}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1131-5-1', 'MI1131-5', 'hard', "Câu 6 (1d). Sử dụng biến đổi Laplace giải phương trình

$$
x^{(3)}+x^{\prime \prime}(t)-17 x^{\prime}(t)-65 x(t)=0, \quad x(0)=-1, x^{\prime}(0)=24, x^{\prime \prime}(0)=-63
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1131-6-1', 'MI1131-6', 'hard', "Câu 7 (1d). Tìm điều kiện cần và đủ của $a$ để hệ phương trình vi phân $\left\{\begin{array}{l}y^{\prime}=(a+1) y+z, \\ z^{\prime}=2 y+a z\end{array}\right.$ thóa mãn $\lim _{x \rightarrow \infty} y(x)=\lim _{x \rightarrow \infty} z(x)=0$ với điều kiện ban đầu $y(0)=y_0, z(0)=z_0$ bât kỳ.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1131-1-3', 'MI1131-1', 'easy', "Câu 1 (2đ). Xét sự hội tụ, phân kỳ của các chuổi số sau.
a) $\sum_{n=1}^{\infty} \frac{(2 n+1)^2}{3^n+n}$
b) $\sum_{n=2}^{\infty} \ln \left(1+\frac{(-1)^n}{n^{2 / 7}}\right)$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1131-1-4', 'MI1131-1', 'easy', "Câu 2 (1đ). Tìm miền hội tụ của chuỗi hàm số $\sum_{n=1}^{\infty}\left(\frac{99-3 n}{n+2}\right)^n x^n$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1131-2-2', 'MI1131-2', 'medium', "Câu 3 (3đ). Giải các phương trình vi phân sau.
a) $y^{\prime}=4 y^2+4 y+1, y(0)=0$;
b) $x^2 y^{\prime}+4 x y=8 y^3, y(1)=1$;
c) $y^{\prime \prime}-y^{\prime}-2 y=\left(27 x^8+72 x^7-3\right) e^{2 x}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1131-3-2', 'MI1131-3', 'medium', "Câu 4 (1đ). Khai triển hàm số $f(x)=\sin (3 x), 0<x<\pi$, thành chuỗi Fourier chỉ chứa các hàm cos.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1131-4-2', 'MI1131-4', 'easy', "Câu 5 (1đ). Tìm biến đổi Laplace $\mathcal{L}\left\{\left(e^{-t}+1\right)^2 \cos (2 t)\right\}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1131-5-2', 'MI1131-5', 'hard', "Câu 6 (1d). Sử dụng biến đổi Laplace giải phương trình

$$
x^{(3)}-x^{\prime \prime}(t)+8 x^{\prime}(t)+60 x(t)=0, \quad x(0)=4, x^{\prime}(0)=20, x^{\prime \prime}(0)=41
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1131-6-2', 'MI1131-6', 'hard', "Câu 7 (1d). Tìm điều kiện cần và dủ của $a$ để hệ phương trình vi phân $\left\{\begin{array}{l}y^{\prime}=a y+4 z, \\ z^{\prime}=2 y+(a+2) z\end{array}\right.$ thỏa mãn $\lim _{x \rightarrow \infty} y(x)=\lim _{x \rightarrow \infty} z(x)=0$ với điều kiện ban đầu $y(0)=y_0, z(0)=z_0$ bất kỳ.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1132-1-1', 'MI1132-1', 'easy', "Câu 1 [2đ]. Xét sự hội tụ, phân kì của chuỗi số
a) $\sum_{n=1}^{\infty} \frac{\tan \frac{5}{n}}{\sqrt{n+1}}$
b) $\sum_{n=1}^{\infty}(-1)^n \frac{n+5}{5 n^2-1}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1132-2-1', 'MI1132-2', 'medium', "Câu 2 [1.5đ]. Tìm miền hội tụ của chuỗi hàm

$$
\sum_{n=1}^{\infty} \frac{5^n}{(2023 n-5)^2} x^{n+1}
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1132-3-1', 'MI1132-3', 'medium', "Câu 3 [1đ]. Khai triển hàm số sau đây thành chuỗi Maclaurin

$$
f(x)=\frac{\left(1-e^{5 x}\right)^2}{e^{5 x}}
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1132-4-1', 'MI1132-4', 'easy', "Câu 4 [2.5đ]. Giải các phương trình vi phân sau:
a) $y^{\prime \prime}-2 y^{\prime \prime}+y=(x+5) e^{-x}$
b) $x^2 y^{\prime \prime}+5 x y^{\prime}-5 y=0$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1132-5-1', 'MI1132-5', 'hard', "Câu 5 [2đ]. a) Tìm biến đổi Laplace của hàm số

$$
f(t)=e^{-5 t} \sin \left(5 t+\frac{\pi}{3}\right)
$$

b) Sử dụng phép biến đổi Laplace giải phương trình vi phân

$$
x^{(4)}+8 x^{\prime \prime}+16 x=0
$$

với $x(0)=x^{\prime}(0)=0, x^{\prime \prime}(0)=5$ và $x^{(3)}(0)=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1132-6-1', 'MI1132-6', 'hard', "Câu 6 [1đ]. Tính tổng sau $A=\frac{5^{-1}}{1.2}+\frac{5^{-3}}{3.4}+\frac{5^{-5}}{5.6}+\cdots$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1132-1-2', 'MI1132-1', 'easy', "Câu 1 [2đ]. Xét sự hội tụ, phân kì của chuỗi số
a) $\sum_{n=1}^{\infty} \frac{\tan \frac{6}{n}}{\sqrt[3]{n+1}}$
b) $\sum_{n=1}^{\infty}(-1)^n \frac{n+6}{6 n^2-1}$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1132-2-2', 'MI1132-2', 'medium', "Câu 2 [1.5đ]. Tìm miền hội tụ của chuỗi hàm

$$
\sum_{n=1}^{\infty} \frac{6^n}{(2023 n-6)^2} x^{n+1}
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1132-3-2', 'MI1132-3', 'medium', "Câu 3 [1đ]. Khai triển hàm số sau đây thành chuỗi Maclaurin

$$
f(x)=\frac{\left(1-e^{6 x}\right)^2}{e^{6 x}}
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1132-4-2', 'MI1132-4', 'easy', "Câu 4 [2.5đ]. Giải các phương trình vi phân sau:
a) $y^{\prime \prime}-2 y^{\prime}+y=(x+6) e^{-x}$
b) $x^2 y^{\prime \prime}+6 x y^{\prime}-6 y=0$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1132-5-2', 'MI1132-5', 'hard', "Câu 5 [2đ]. a) Tìm biến đổi Laplace của hàm số

$$
f(t)=e^{-6 t} \cos \left(6 t-\frac{\pi}{3}\right)
$$

b) Sử dụng phép biến đổi Laplace giải phương trình vi phân

$$
x^{(4)}+8 x^{\prime \prime}+16 x=0
$$

với $x(0)=x^{\prime}(0)=x^{\prime \prime}(0)=0$ và $x^{(3)}(0)=6$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1132-6-2', 'MI1132-6', 'hard', "Câu 6 [1đ]. Tính tổng sau $B=\frac{6^{-1}}{1.2}+\frac{6^{-3}}{3.4}+\frac{6^{-5}}{5.6}+\cdots$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1133-1-1', 'MI1133-1', 'easy', "Câu 1 (2đ). Xét sự hội tụ, phân kì của các chuỗi số sau:
a) $\sum_{n=1}^{\infty} \frac{n+7}{\sqrt{n^2+7}}$
b) $\sum_{n=1}^{\infty} \frac{\ln (n+7)}{n^2+7}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1133-2-1', 'MI1133-2', 'medium', "Câu 2 (1d). Tìm miền hội tụ của chuỗi hàm số $\sum_{n=1}^{\infty} \frac{(-7)^n}{n+7}(x-1)^n$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1133-3-1', 'MI1133-3', 'medium', "Câu 3 (3đ). Giải các phương trình vi phân sau:
a) $2 y y^{\prime}=7 e^{-7 x}\left(y^2+1\right), y(0)=1$.
b) $y^{\prime \prime}+7 y^{\prime}=50 \sin x$.
c) $\left(y^2+1\right) d x+(4 x y-7) d y=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1133-4-1', 'MI1133-4', 'easy', "Câu 4 (1đ). Tìm biến đổi Laplace ngược $L^{-1}\left\{\frac{s+2024}{s^2+2 s+2}\right\}$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1133-5-1', 'MI1133-5', 'hard', "Câu 5 (2đ). Sử dụng phép biến đổi Laplace để giải các phương trình vi phân sau:
a) $x^{\prime \prime}+4 x=\cos (2 t), x(0)=x^{\prime}(0)=0$.
b) $x^{\prime \prime \prime}-x^{\prime \prime}+x^{\prime}-x=7, x(0)=x^{\prime}(0)=0, x^{\prime \prime}(0)=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1133-6-1', 'MI1133-6', 'hard', "Câu 6 (1đ). Tính tổng của chuỗi số $\sum_{n=1}^{\infty} \frac{n(n+2)}{7^n}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1133-1-2', 'MI1133-1', 'easy', "Câu 1 (2d). Xét sự hội tụ, phân kì của các chuỗi số sau:
a) $\sum_{n=1}^{\infty} \frac{n+8}{\sqrt{n^2+8}}$
b) $\sum_{n=1}^{\infty} \frac{\ln (n+8)}{n^2+8}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1133-2-2', 'MI1133-2', 'medium', "Câu 2 (1đ). Tìm miền hội tụ của chuỗi hàm số $\sum_{n=1}^{\infty} \frac{(-8)^n}{n+8}(x-2)^n$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1133-3-2', 'MI1133-3', 'medium', "Câu 3 (3d). Giải các phương trình vi phân sau:
a) $y y^{\prime}=4 e^{-8 x}\left(y^2+1\right), y(0)=2$.
b) $y^{\prime \prime}+8 y^{\prime}=65 \cos x$.
c) $\left(y^2+1\right) d x+(4 x y-8) d y=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1133-4-2', 'MI1133-4', 'easy', "Câu 4 (1đ). Tìm biến đổi Laplace ngược $L^{-1}\left\{\frac{s+2024}{s^2-2 s+2}\right\}(t)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1133-5-2', 'MI1133-5', 'hard', "Câu 5 (2d). Sử dụng phép biến đổi Laplace để giải các phương trình vi phân sau:
a) $x^{\prime \prime}+9 x=\cos (3 t), x(0)=x^{\prime}(0)=0$.
b) $x^{\prime \prime \prime}-x^{\prime \prime}+x^{\prime}-x=8, x(0)=x^{\prime}(0)=0, x^{\prime \prime}(0)=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1133-6-2', 'MI1133-6', 'hard', "Câu 6 (1đ). Tính tổng của chuỗi số $\sum_{n=1}^{\infty} \frac{n(n+2)}{8^n}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134-1-1', 'MI1134-1', 'easy', "Câu 1 (2đ). Xét sự hội tụ của các chuỗi số sau:
(a) $\sum_{n=0}^{+\infty} \frac{5^n+2^n}{4^n+3^n}$
(b) $\sum_{n=0}^{+\infty} \frac{(-1)^n}{\sqrt{n}+1}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134-2-1', 'MI1134-2', 'medium', "Câu 2 (1đ). Tìm miền hội tụ của chuỗi hàm $\sum_{n=1}^{\infty} \frac{(-1)^n}{n}(x+1)^n$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134-3-1', 'MI1134-3', 'medium', "Câu 3 (3đ). Giải các phương trình vi phân sau:
(a) $x\left(e^y+4\right) d x+\left(x^2+9\right) e^y d y=0$.
(b) $y^{\prime}-\frac{4}{x} y=4 x^3$ với điều kiện đầu $y(1)=1$.
(c) $y^{\prime \prime}-2 y^{\prime}+y=e^x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134-4-1', 'MI1134-4', 'easy', "Câu 4 (1đ). Tính $\mathcal{L}^{-1}\left\{\frac{s^2+1}{s^3-2 s^2+8 s}\right\}(t)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134-5-1', 'MI1134-5', 'hard', "Câu 5 (2d). Cho hàm số $f(t)=\left\{\begin{array}{llc}1 & \text { nếu } & 0 \leq t<1 \\ 0 & \text { nếu } & t \geq 1\end{array}\right.$.
(a) Tính $\mathcal{L}\{f(t)\}(s)$.
(b) Sử dụng biến đổi Laplace, giải phương trình vi phân:

$$
x^{\prime \prime}+x=f(t)
$$

với điều kiện đầu $x(0)=x^{\prime}(0)=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134-6-1', 'MI1134-6', 'hard', "Câu 6 (1d). Tính tổng $\sum_{n=1}^{+\infty} \frac{((n-1)!)^2}{(2 n)!}(2 x)^{2 n}$ với $|x|<1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134-1-2', 'MI1134-1', 'easy', "Câu 1 (2đ). Xét sự hội tụ của các chuỗi số sau:
(a) $\sum_{n=0}^{+\infty} \frac{6^n-2^n}{5^n+3^n}$
(b) $\sum_{n=0}^{+\infty} \frac{(-1)^n}{\sqrt[3]{n}+2}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134-2-2', 'MI1134-2', 'medium', "Câu 2 (1d). Tìm miền hội tụ của chuỗi hàm $\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n+2}(x-1)^n$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134-3-2', 'MI1134-3', 'medium', "Câu 3 (3d). Giải các phương trình vi phân sau:
(a) $x\left(e^y+1\right) d x+\left(x^2+1\right) e^y d y=0$.
(b) $y^{\prime}-\frac{6}{x} y=2 x^2$ với điều kiện đầu $y(1)=1$.
(c) $y^{\prime \prime}-4 y^{\prime}+3 y=e^{3 x}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134-4-2', 'MI1134-4', 'easy', "Câu 4 (1d). Tính $\mathcal{L}^{-1}\left\{\frac{s^2+2}{s^3-4 s^2+8 s}\right\}(t)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134-5-2', 'MI1134-5', 'hard', "Câu 5 (2đ). Cho hàm số $f(t)=\left\{\begin{array}{ccc}-1 & \text { nếu } & 0 \leq t<2 \\ 0 & \text { nếu } & t \geq 2\end{array}\right.$.
(a) Tính $\mathcal{L}\{f(t)\}(s)$.
(b) Sử dụng biến đổi Laplace, giải phương trình vi phân:

$$
x^{\prime \prime}+4 x=f(t)
$$

với điều kiện đầu $x(0)=x^{\prime}(0)=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134-6-2', 'MI1134-6', 'hard', "Câu 6 (1đ). Tính tổng $\sum_{n=1}^{+\infty} \frac{((n-1)!)^2}{(2 n)!}(2 x)^{2 n}$ với $|x|<1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134E-1-1', 'MI1134E-1', 'easy', "Question 1 (2pts). Test for convergence of the following series:
(a) $\sum_{n=0}^{\infty} \frac{5^n+2^n}{4^n+3^n}$
(b) $\sum_{n=0}^{\infty} \frac{(-1)^n}{\sqrt{n}+1}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134E-2-1', 'MI1134E-2', 'medium', "Question 2 (1pts). Find the domain of convergence of the series $\sum_{n=1}^{\infty} \frac{(-1)^n}{n}(x+1)^n$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134E-3-1', 'MI1134E-3', 'medium', "Question 3 (3pts). Solve the following problems:
(a) $x\left(e^y+4\right) d x+\left(x^2+9\right) e^y d y=0$.
(b) $y^{\prime}-\frac{4}{x} y=4 x^3$ with the initial condition $y(1)=1$.
(c) $y^{\prime \prime}-2 y^{\prime}+y=e^x$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134E-4-1', 'MI1134E-4', 'easy', "Question 4 (1pt). Determine $\mathcal{L}^{-1}\left\{\frac{s^2+1}{s^3-2 s^2+8 s}\right\}(t)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134E-5-1', 'MI1134E-5', 'hard', "Question 5 (2pt). Given $f(t)=\left\{\begin{array}{llc}1 & \text { if } & 0 \leq t<1 \\ 0 & \text { if } & t \geq 1\end{array}\right.$.
(a) Determine $\mathcal{L}\{f(t)\}(s)$.
(b) Using Laplace transforms, solve the following differential equation:

$$
x^{\prime \prime}+x=f(t)
$$

with the initial conditions $x(0)=x^{\prime}(0)=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134E-6-1', 'MI1134E-6', 'hard', "Question 6 (1pt). Find the sum $\sum_{n=1}^{\infty} \frac{((n-1)!)^2}{(2 n)!}(2 x)^{2 n}$ where $|x|<1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134E-1-2', 'MI1134E-1', 'easy', "Question 1 (2pts). Test for convergence of the following series
(a) $\sum_{n=0}^{\infty} \frac{6^n-2^n}{5^n+3^n}$
(b) $\sum_{n=0}^{\infty} \frac{(-1)^n}{\sqrt[3]{n}+2}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134E-2-2', 'MI1134E-2', 'medium', "Question 2 (1pts). Find the domain of convergence of the series $\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n+2}(x-1)^n$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134E-3-2', 'MI1134E-3', 'medium', "Question 3 (3pt). Solve the following problems:
(a) $x\left(e^y+1\right) d x+\left(x^2+1\right) e^y d y=0$.
(b) $y^{\prime}-\frac{6}{x} y=2 x^2$ with the initial condition $y(1)=1$.
(c) $y^{\prime \prime}-4 y^{\prime}+3 y=e^{3 x}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134E-4-2', 'MI1134E-4', 'easy', "Question 4 (1pt). Determine $\mathcal{L}^{-1}\left\{\frac{s^2+2}{s^3-4 s^2+8 s}\right\}(t)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134E-5-2', 'MI1134E-5', 'hard', "Question 5 (2pt). Given $f(t)=\left\{\begin{array}{clc}-1 & \text { if } & 0 \leq t<2 \\ 0 & \text { if } & t \geq 2\end{array}\right.$.
(a) Determine $\mathcal{L}\{f(t)\}(s)$.
(b) Using Laplace transforms, solve the following differential equation:

$$
x^{\prime \prime}+4 x=f(t)
$$

with the initial conditions $x(0)=x^{\prime}(0)=0$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1134E-6-2', 'MI1134E-6', 'hard', "Question 6 (1pt). Find the sum $\sum_{n=1}^{\infty} \frac{((n-1)!)^2}{(2 n)!}(2 x)^{2 n}$ where $|x|<1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1141-1-1', 'MI1141-1', 'easy', "Câu 1(1đ). Cho mệnh đề : "" Nếu 2024 là số chẵn, hay 2023 chia hết cho 3, thì phương trình $x^3-3 x^2+1=0$ chỉ có đúng 1 nghiệm thực"". Mô tả mệnh đề đã cho bằng các phép toán mênh đề và cho biết mệnh đề này đúng hay sai? Vi sao?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1141-2-1', 'MI1141-2', 'medium', "Câu 2(2đ). Cho ánh xạ $f: \mathbb{R} \rightarrow \mathbb{R}$, xác định bởi $f(x)=2 x^3-x^2$ và $A=[0 ; 1]$. f có đơn ánh, toàn ánh không? Vi sao? $\operatorname{Tìm} f^{-1}(A)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1141-3-1', 'MI1141-3', 'medium', "Câu 3(1d). Giải phương trình

$$
z^4-2 z^3+6 z^2-2 z+5=0
$$

biết phương trình có 1 nghiệm $z=1+2 i$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1141-4-1', 'MI1141-4', 'easy', "Câu 4(2d). Trong $P_3[x]$ cho các vectơ $p_1=1-2 x+x^2+x^3, p_2=2+3 x-x^2+4 x^3$,

$$
p_3=3+x+5 x^3, p_4=1+5 x-2 x^2+m x^3, p_5=6+2 x+n x^3 . \text { Ký hiệu }
$$

$T=\operatorname{span}\left\{p_1, p_2, p_3\right\}, S=\operatorname{span}\left\{p_4, p_5\right\}$. Tìm $m, n$ để $\operatorname{dim} T \cap S=3$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1141-5-1', 'MI1141-5', 'hard', "Câu 5(3d). Trên không gian Euclide $\mathbb{R}^3$ với tích vô hướng chính tắc cho toán tử tuyến tính $f$ xác định bởi

$$
f\left(x_1, x_2, x_3\right)=\left(x_1+2 x_2+2 x_3, 2 x_1+x_2+2 x_3, 2 x_1+2 x_2+x_3\right)
$$

a) Tìm 1 cơ sở trực chuẩn gồm các vectơ riêng của $f$ và tìm ma trận của $f$ theo cơ sở trực chuẩn đó.
b) Chứng minh $f$ là một phép đẳng cấu của $\mathbb{R}^3$, đồng thời tìm phép đẳng cấu nghịch đảo $f^{-1}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1141-6-1', 'MI1141-6', 'hard', "Câu 6(1d). Cho hệ phương trình $\left\{\begin{array}{c}a x+(3 a+1) y-3 z+5 t=0 \\ (3 a+4) x+4 y+2 a z+4 t=0 \\ (a-3) x+(a+1) y+(a-3) z+(a+1) t=0 \\ a x+(a-5) y+a z+(a-5) t=0\end{array}\right.$.
Tìm $a$ để hệ trên chỉ có nghiệm tầm thường.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1141-1-2', 'MI1141-1', 'easy', "Câu 1(1đ). Cho mệnh đề: "" Nếu 2024 là số lé, hay 2025 chia hết cho 9, thì phương trình $x^3+3 x^2+5=0$ có nhiều hơn 1 nghiệm thực"". Mô tả mệnh đề đã cho bằng các phép toán mênh đề và cho biết mệnh đề này đúng hay sai? Vi sao?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1141-2-2', 'MI1141-2', 'medium', "Câu 2(2d). Cho ánh xạ $f: \mathbb{R} \rightarrow \mathbb{R}$, xác định bởi $f(x)=4 x^3-x^2$ và $A=[0 ; 3]$. f có đơn ánh, toàn ánh không? Vi sao? $\operatorname{Tim} f^{-1}(A)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1141-3-2', 'MI1141-3', 'medium', "Câu 3(1d). Giải phương trình

$$
z^4-6 z^3+14 z^2-6 z+13=0
$$

biết phương trình có 1 nghiệm $z=3-2 i$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1141-4-2', 'MI1141-4', 'easy', "Câu 4(2đ). Trong $P_3[x]$ cho các vectơ $p_1=1+x+x^2+2 x^3, p_2=x-x^2+x^3$,

$$
\begin{aligned}
& p_3=1+2 x+3 x^3, p_4=1+2 x^2+m x^3, p_5=2+4 x+n x^3 . \text { Ký hiệu } \\
& T=\operatorname{span}\left\{p_1, p_2, p_3\right\}, S=\operatorname{span}\left\{p_4, p_5\right\} . \text { Tim } m, n \text { để } \operatorname{dim} T \cap S=3 .
\end{aligned}
$$", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1141-5-2', 'MI1141-5', 'hard', "Câu 5(3d). Trên không gian Euclide $\mathbb{R}^3$ với tích vô hướng chính tắc cho toán tử tuyến tính $f$ xác định bởi

$$
f\left(x_1, x_2, x_3\right)=\left(x_1+3 x_2+3 x_3, 3 x_1+x_2+3 x_3, 3 x_1+3 x_2+x_3\right)
$$

c) Tìm 1 cơ sở trực chuẩn gồm các vectơ riêng của $f$ và tìm ma trận của $f$ theo cơ sở trực chuẩn đó.
d) Chứng minh $f$ là một phép đẳng cấu của $\mathbb{R}^3$, đồng thời tìm phép đẳng cấu nghịch đảo $f^{-1}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI1141-6-2', 'MI1141-6', 'hard', "Câu 6(1d). Cho hệ phương trình $\left\{\begin{array}{c}(3 a+4) x+5 y+2 a z+5 t=0 \\ a x+(3 a+1) y-3 z+7 t=0 \\ (a-3) x+(a+1) y+(a-3) z+(a+1) t=0 \\ a x+(a-2) y+a z+(a-2) t=0\end{array}\right.$.
Tìm $a$ để hệ trên có nghiệm không tầm thường.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2010-1-1', 'MI2010-1', 'easy', "Câu 1 (1.5d). Chứng minh $(0.5 ; 1)$ là khoảng cách ly nghiệm của phương trình $e^x-3 x^2=0$. Sử dụng phương pháp tiếp tuyến (Newton), hãy tìm nghiệm xấp xỉ với 6 chữ số đáng tin.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2010-2-1', 'MI2010-2', 'medium', "Câu 2 (2d). Cường độ phóng xạ của một nguồn phóng xạ được cho bởi công thức $y=(a x+b)^{-1}$. Hãy xác định các tham sổ $a, b$ để xấp xi tốt nhất bảng số liệu sau theo phương pháp bình phương tối thiểu.
\begin{tabular}{l|l|l|l|l|l}
x & 0.2 & 0.3 & 0.4 & 0.5 & 0.6 \\
\hline y & 3.16 & 2.38 & 1.75 & 1.34 & 1.00
\end{tabular}", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2010-3-1', 'MI2010-3', 'medium', "Câu 3 (1.5đ). Từ bảng số liệu sau, dùng công thức đa thức nội suy Newton tiến với các mốc nội suy cách đểu để tính xấp xi $f(3.1)$.
\begin{tabular}{c|c|c|c|c|c}
$x$ & 2.0 & 2.4 & 2.8 & 3.2 & 3.6 \\
\hline$y$ & 124.80 & 133.72 & 142 & 149.81 & 157.23
\end{tabular}", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2010-4-1', 'MI2010-4', 'easy', "Câu 4 (2d). a) Tính xấp xi tích phân $I=\int_0^1 e^x x^2 d x$ bằng cách sử dụng phương pháp hình thang với bước $h=0.1$.
b) Sử dụng công thức đánh giá sai số, hãy tìm số điểm chia $n$ tối thiểu để đạt được sai số tuyệt đối $\Delta I \leq 5 \times 10^{-9}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2010-5-1', 'MI2010-5', 'hard', "Câu 5 (1.5d). a) Sử dụng công thức (sai phân) trung tâm, tính gần đúng đạo hàm của hàm số $y(x)$ tại $2.20,2.40,2.60$ trong bảng giá trị
\begin{tabular}{l|l|l|l|l|l}
x & 2.0 & 2.20 & 2.40 & 2.60 & 2.80 \\
\hline y & 29.5562 & 43.6811 & 63.4935 & 91.0149 & 128.9260
\end{tabular}
b) Sử dụng công thức 3 điểm cận trái để tính xấp xỉ $y^{\prime}(2.0)$ và công thức 3 điểm cận phải để tính xấp xỉ $y^{\prime}(2.8)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2010-6-1', 'MI2010-6', 'hard', "Câu 6 (1.5d). a) Dùng công thức Euler ẩn với bước $h=0.1$ để tính xấp xi $y$ tại $x=1.1,1.2$

$$
y^{\prime}(x)=x(y+1) \quad \text { với mọi } x \geq 1, y(1)=3
$$

b) Viết thuật toán để tính xấp xi nghiệm của bài toán Cauchy 1 chiều, bậc 1 trên đoạn $\left[x_0, X\right]$ theo công thức Euler cải tiến, với bước $h$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2010-1-2', 'MI2010-1', 'easy', "Câu 1 (1.5d). Chứng minh (3;4) là khoảng cách ly nghiệm của phương trình $e^x-3 x^2=0$. Sử dụng phương pháp tiếp tuyến (Newton), hãy tìm nghiệm xấp xỉ với 5 chữ số đáng tin.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2010-2-2', 'MI2010-2', 'medium', "Câu 2 ( 2 d). Cường độ phóng xạ của một nguồn phóng xạ được cho bời công thức $y=b e^{a x}$. Hãy xác định các tham số $a, b$ để xẩp xỉ tốt nhất bảng số liệu sau theo phương pháp bình phương tối thiểu.
\begin{tabular}{l|l|l|l|l|l}
x & 0.2 & 0.3 & 0.4 & 0.5 & 0.6 \\
\hline y & 3.16 & 2.38 & 1.75 & 1.34 & 1.00
\end{tabular}", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2010-3-2', 'MI2010-3', 'medium', "Câu 3 (1.5d). Từ bảng số liệu sau, dùng công thức đa thức nội suy Newton tiến với các mốc nội suy cách đểu để tính xấp xỉ $f(3.6)$.
\begin{tabular}{c|c|c|c|c|c}
$x$ & 3.1 & 3.5 & 3.9 & 4.3 & 4.7 \\
\hline$y$ & 145.96 & 151.70 & 157.23 & 162.57 & 167.73
\end{tabular}", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2010-4-2', 'MI2010-4', 'easy', "Câu 4 (2đ). a) Tính xấp xi tích phân $I=\int_1^2 e^{-x} x^2 d x$ bằng cách sử dụng phương pháp hình thang với bước $h=0.1$.
b) Sử dụng công thức đánh giá sai số, hãy tìm số điểm chia $n$ tối thiểu để đạt được sai số tuyệt đối $\Delta I \leq 5 \times 10^{-9}$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2010-5-2', 'MI2010-5', 'hard', "Câu 5 (1.5d). a) Sử dụng công thức (sai phân) trung tâm, tính gần đúng đạo hàm của hàm số $y(x)$ tại 1.20,1.40,1.60 trong bảng giá trị
\begin{tabular}{l|l|l|l|l|l}
x & 1.0 & 1.20 & 1.40 & 1.60 & 1.80 \\
\hline y & 2.7183 & 4.7810 & 7.9482 & 12.6798 & 19.6009
\end{tabular}
b) Sử dụng công thức 3 điểm cận trái để tính xấp xỉ $y^{\prime}(1.0)$ và công thức 3 điểm cận phải để tính xấp xỉ $y^{\prime}(1.8)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2010-6-2', 'MI2010-6', 'hard', "Câu 6 (1.5d). a) Dùng công thức Euler ẩn với bước $h=0.1$ để tính xấp xỉ $y$ tại $x=1.1,1.2$

$$
y^{\prime}(x)=(x+1) y \quad \text { với mọi } x \geq 1, y(1)=3 .
$$

b) Viết thuật toán để tính xấp xi nghiệm của bài toán Cauchy 1 chiều, bậc 1 trên đoạn $\left[x_0, X\right]$ theo công thức Euler cải tiến, với bước $h$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020-1-1', 'MI2020-1', 'easy', "Câu 1. (2,0 điểm) Trong một phép thử cho các sự kiện $A$ và $B$ thỏa mān $P(A)=0,4$; $P(B)=0,5 ; P(\bar{A} B)=0,3$.
(a) Tinh $P(\bar{A} \bar{B})$.
(b) Tính $P(A \mid \bar{B})$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020-2-1', 'MI2020-2', 'medium', "Câu 2. (2,0 điểm) Số lượt truy cập vào trang web A trong khoảng thời gian bất kỳ là biến ngẫu nhiên có phân phối Poisson với trung bình $\lambda$ lượt truy cập mỗi giây. Xác suất có ít nhất một lượt truy cập vào trang web A trong vòng 2 giây là 0,4512 .
(a) Tìm tham số $\lambda$.
(b) Tính xác suất trang web A có ít nhất một lượt truy cập trong vòng 5 giây tới.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020-3-1', 'MI2020-3', 'medium', "Câu 3. (2,0 điểm) Hàm mật độ xác suât đồng thời của hai biến ngẫu nhiên $X$ và $Y$ là

$$
f_{X, Y}(x, y)= \begin{cases}k x y^2, & \text { nếu } 0<x<1,0<y<1 \\ 0, & \text { nếu trái lại. }\end{cases}
$$

(a) Tìm hằng số $k$.
(b) Tìm $f_Y(y)$, hàm mật độ xác suất biên của $Y$; từ đó tính $E(X \mid Y=y)$, kỳ vọng có điều kiện của $X$ với điều kiện $Y=y, 0<y<1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020-4-1', 'MI2020-4', 'easy', "Câu 4. (2,0 điểm) Giả sử tuổi thọ (đơn vị: giờ) của một loại bóng đèn là biến ngẩu nhiên có phân phối chuẩn với độ lệch chuẩn là 10 giờ. Quan sát tuổi thọ của 24 bóng đèn loại này, thu được kết quả (giờ):

$$
\begin{aligned}
& 2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014, \\
& 2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025 .
\end{aligned}
$$

(a) Xây dựng khoảng tin cậy đối xứng $99 \%$ cho tuổi thọ trung bình của loại bóng đèn nói trên.
(b) Nếu muốn sai số của khoảng tin cậy đối xứng $95 \%$ cho tuổi thọ trung bình của loại bóng đèn này không lớn hơn 2 giờ thì cần một mẫu kích thước bao nhiêu?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020-5-1', 'MI2020-5', 'hard', "Câu 5. (2,0 điểm) Quan sát hai mẫu ngẫu nhiên độc lập kích thước $n_1=16$ và $n_2=13$ từ hai tổng thể có phân phối chuẩn, $X_i \sim \mathcal{N}\left(\mu_i, \sigma_i^2\right), i=1,2$, với phương sai bằng nhau ta thu được kết quả sau:
\begin{tabular}{lcc} 
& Tổng thể 1 & Tỗng thể 2 \\
\hline Trung bình mẫu & 34,6 & 32,2 \\
Phương sai mẫu hiệu chỉnh & 5,8 & 5,9
\end{tabular}
(a) Liệu có thể kết luận kỳ vọng của tổng thể 1 cao hơn của tổng thể 2 hay không với mức ý nghĩa 0,01 ?
(b) Tính $P\left(X_2>34,63\right)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020-1-2', 'MI2020-1', 'easy', "Câu 1. (2,0 điểm) Trong một phép thử cho các sự kiện $A$ và $B$ thỏa mãn $P(A)=0,5$; $P(B)=0,4 ; P(\bar{A} B)=0,3$.
(a) Tính $P(\bar{A} \bar{B})$.
(b) Tính $P(A \mid \bar{B})$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020-2-2', 'MI2020-2', 'medium', "Câu 2. (2,0 điểm) Số lượt truy cập vào một trang web A trong khoảng thời gian bất kỳ là biến ngẫu nhiên có phân phối Poisson với trung bình $\lambda$ lượt truy cập mỗi giây. Xác suất có ít nhất một lượt truy cập vào trang web A trong vòng 3 giây là 0,59343 .
(a) Tìm tham số $\lambda$.
(b) Tính xác suât trang web A có ít nhất một lượt truy cập trong vòng 5 giây tới.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020-3-2', 'MI2020-3', 'medium', "Câu 3. (2,0 điểm) Hàm mật độ xác suất đồng thời của hai biến ngẫu nhiên $X$ và $Y$ là

$$
f_{X, Y}(x, y)= \begin{cases}k x^2 y, & \text { nếu } 0<x<1,0<y<1, \\ 0, & \text { nếu trái lại. }\end{cases}
$$

(a) Tìm hằng số $k$.
(b) Tìm $f_X(x)$, hàm mật độ xác suất biên của $X$; từ đó tính $E(Y \mid X=x)$, kỳ vọng có điều kiện của $Y$ với điều kiện $X=x, 0<x<1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020-4-2', 'MI2020-4', 'easy', "Câu 4. (2,0 điểm) Giả sử tuổi thọ (đơn vị: giờ) của một loại bóng đèn là biến ngẫu nhiên có phân phối chuẩn với độ lệch chuẩn là 10 giờ. Quan sát tuổi thọ của 24 bóng đèn loại này, thu được kết quả (giờ):

$$
\begin{aligned}
& 2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024, \\
& 2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035 .
\end{aligned}
$$

(a) Xây dựng khoảng tin cậy đối xứng $99 \%$ cho tuổi thọ trung bình của loại bóng đèn nói trên.
(b) Nếu muốn sai số của khoảng tin cậy đối xứng $95 \%$ cho tuổi thọ trung bình của loại bóng đèn này không quá 2 giờ thì cần một mẫu kích thước bao nhiêu?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020-5-2', 'MI2020-5', 'hard', "Câu 5. (2,0 điểm) Quan sát hai mẫu ngẫu nhiên độc lập kích thước $n_1=16$ và $n_2=13$ từ hai tổng thể có phân phối chuẩn, $X_i \sim \mathcal{N}\left(\mu_i, \sigma_i^2\right), i=1,2$, với phương sai bằng nhau ta thu được kết quả sau:
\begin{tabular}{lcc} 
& Tổng thể 1 & Tổng thể 2 \\
\hline Trung bình mẫu & 34,5 & 32,2 \\
Phương sai mẫu hiệu chỉnh & 5,7 & 5,9
\end{tabular}
(a) Liệu có thể kết luận kỳ vọng của tổng thể 1 cao hơn của tổng thể 2 hay không với mức ý nghĩa 0,01 .
(b) Tính $P\left(X_1>36,89\right)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020E-1-1', 'MI2020E-1', 'easy', "Question 1 (2.0 points) Let $A$ and $B$ be two events such that $P(A)=0.4 ; P(B)=0.5$; $P(\bar{A} B)=0.3$.
(a) Find $P(\bar{A} \bar{B})$.
(b) Find $P(A \mid \bar{B})$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020E-2-1', 'MI2020E-2', 'medium', "Question 2 (2.0 points) The number of messages sent to a computer bulletin board is a Poisson random variable with a mean of $\lambda$ messages per hour. The probability that at least one message is received in two hours is 0.4512 .
(a) Find the parameter $\lambda$.
(b) What is the probability that at least one message is received in 5 hours?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020E-3-1', 'MI2020E-3', 'medium', "Question 3 (2.0 points) The joint probability density function of two random variables $X$ and $Y$ is

$$
f_{X, Y}(x, y)= \begin{cases}k x y^2, & \text { if } 0<x<1,0<y<1 \\ 0, & \text { otherwise }\end{cases}
$$

(a) Find the constant $k$.
(b) Find $E(X \mid Y=y), 0<y<1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020E-4-1', 'MI2020E-4', 'easy', "Question 4 (2.0 points) The life in hours of a light bulb is known to be normally distributed $\mathcal{N}\left(\mu, \sigma^2\right)$ with $\sigma=10$ hours. Take a random sample of 24 similar bulbs and obtain the data (hours)

$$
\begin{aligned}
& 2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014 \text {, } \\
& 2014 \text {, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025. }
\end{aligned}
$$

(a) Construct a $99 \%$ two-sided confidence interval on the mean life.
(b) Suppose that we want to be $95 \%$ confident that the error in estimating the mean life is less than 3 hours, what sample size should be used?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020E-5-1', 'MI2020E-5', 'hard', "Question 5 (2.0 points) Independent random samples of $n_1=13$ and $n_2=16$ observations were selected from two normal populations, $X_1 \sim \mathcal{N}\left(\mu_1 ; \sigma_1^2\right)$ and $X_2 \sim \mathcal{N}\left(\mu_2 ; \sigma_2^2\right)$, with $\sigma_1^2=\sigma_2^2$ :
\begin{tabular}{lcc} 
& Population 1 & Population 2 \\
\hline Sample Mean & 34.6 & 32.2 \\
Sample Variance & 5.8 & 5.9
\end{tabular}
(a) Can we conclude that population 1's expectations are higher than population 2's expectations. Use a 0.01 level of significance.
(b) Find $P\left(X_2>34.63\right)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020E-1-2', 'MI2020E-1', 'easy', "Question 1 (2.0 points) Let $A$ and $B$ be two events such that $P(A)=0.5 ; P(B)=0.4$; $P(\bar{A} B)=0.3$.
(a) Find $P(\bar{A} \bar{B})$.
(b) Find $P(A \mid \bar{B})$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020E-2-2', 'MI2020E-2', 'medium', "Question 2 (2.0 points) The number of messages sent to a computer bulletin board is a Poisson random variable with a mean of $\lambda$ messages per hour. The probability that at least one message is received in three hours is 0.59343 .
(a) Find the parameter $\lambda$.
(b) What is the probability that at least one message is received in 5 hours?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020E-3-2', 'MI2020E-3', 'medium', "Question 3 (2.0 points) The joint probability density function of two random variables $X$ and $Y$ is

$$
f_{X, Y}(x, y)= \begin{cases}k x^2 y, & \text { if } 0<x<1,0<y<1, \\ 0, & \text { otherwise } .\end{cases}
$$

(a) Find the constant $k$.
(b) Find $E(Y \mid X=x), 0<x<1$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020E-4-2', 'MI2020E-4', 'easy', "Question 4 ( 2.0 points) The life in hours of a light bulb is known to be normally distributed $\mathcal{N}\left(\mu, \sigma^2\right)$ with $\sigma=10$ hours. Take a random sample of 24 similar bulbs and obtain the data (hours)

$$
\begin{aligned}
& 2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024, \\
& 2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035 .
\end{aligned}
$$

(a) Construct a 99\% two-sided confidence interval on the mean life.
(b) Suppose that we want to be $95 \%$ confident that the error in estimating the mean life is less than 3 hours, what sample size should be used?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2020E-5-2', 'MI2020E-5', 'hard', "Question 5 (2.0 points) Independent random samples of $n_1=13$ and $n_2=16$ observations were selected from two normal populations, $X_1 \sim \mathcal{N}\left(\mu_1 ; \sigma_1^2\right)$ and $X_2 \sim \mathcal{N}\left(\mu_2 ; \sigma_2^2\right)$, with $\sigma_1^2=\sigma_2^2$ :
\begin{tabular}{lcc} 
& Population 1 & Population 2 \\
\hline Sample Mean & 34.5 & 32.2 \\
Sample Variance & 5.7 & 5.9
\end{tabular}
(a) Can we conclude that population 1's expectations are higher than population 2's expectations. Use a 0.01 level of significance.
(b) Find $P\left(X_1>36.89\right)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2021-2-1', 'MI2021-2', 'medium', "Câu 1. (2,5 điểm) Tại một nhà máy, hệ thống phun nước tự động được liên kết với hệ thống báo cháy tự dộng. Giả sử xác suất hệ thống phun nước tự động bị hỏng là 0,03 ; xác suât hệ thống báo cháy tự động bị hỏng là 0,05 và xác suât để cả hai hệ thống bị hỏng cùng lúc là 0,02 .
(a) Tính xác suất để hệ thống báo cháy tự động bị hỏng còn hệ thống phun nước tự động vẵn hoạt động bình thường.
(b) Tính xác suất để có ít nhất một hệ thống hoạt động bình thường.
(c) Biết hệ thống phun nước tự động bị hỏng. Tính xác suất để hệ thống báo cháy tự động hoạt dộng bình thường.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2021-3-1', 'MI2021-3', 'medium', "Câu 2. (2,5 điểm) Có hai kiện hàng. Kiện thứ nhất có 4 sản phẩm tốt và 3 sản phẩm xấu. Kiện thứ hai có 3 sản phẩm tốt và 2 sản phẩm xấu. Lấy ngẫu nhiên từ kiện thứ nhất ra 2 sản phẩm và từ kiện thứ hai ra 1 sản phẩm. Gọi $X$ là biến ngẫu nhiên chỉ số sản phẩm tốt trong 3 sản phẩm lấy ra.
(a) Hãy lập bảng phân phối xác suất của $X$.
(b) Tính kỳ vọng và phương sai của biến ngẫu nhiên $Y=1-2 X$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2021-4-1', 'MI2021-4', 'easy', "Câu 3. (2,0 điểm) Giả sử trọng lượng tạp chất (dơn vị: gam) trong một sản phẩm là biến ngẫu nhiên $Z$ có phân phối chuẩn. Một mẫu ngẫu nhiên gồm 100 sản phẩm được tiến hành kiểm tra và thấy lượng tạp chất như sau:
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline$Z$ (gam) & $(26-27)$ & {$[27-28)$} & {$[28-29)$} & {$[29-30)$} & {$[30-31)$} & {$[31-32)$} \\
\hline Số sản phẩm & 6 & 10 & 24 & 30 & 18 & 12 \\
\hline
\end{tabular}
(a) Tìm khoảng tin cậy cho trọng lượng tạp chất trung bình của sản phẩm nói trên với độ tin cậy $95 \%$.
(b) Một sản phẩm có trọng lượng tạp chất từ 30 gam trở lên thì sẽ bị loại. Hãy tìm khoảng tin cậy cho tỷ lệ sản phẩm bị loại với độ tin cậy $99 \%$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2021-5-1', 'MI2021-5', 'hard', "Câu 4. (3,0 điểm) Khảo sát về việc tham gia các môn thể thao tại một trường học người ta thấy, trong số 150 học sinh nam và 200 học sinh nữ dược khảo sát có 18 học sinh nam và 30 học sinh nữ chơi ít nhất một môn thể thao.
(a) Với mức ý nghỉa $5 \%$, có thể cho rằng tỷ lệ học sinh nam chơi ít nhất một môn thể thao là cao hơn tỷ lệ này ở học sinh nữ hay không?
(b) Với mức ý nghĩa $5 \%$, có thể cho rằng tỷ lệ học sinh nam trong thành phố có chơi ít nhất một môn thể thao là $10 \%$ hay không?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2021-2-2', 'MI2021-2', 'medium', "Câu 1. (2,5 điểm) Tại một nhà máy, hệ thống phun nước tự động được liên kết với hệ thống báo cháy tự động. Giả sử xác suất hệ thống phun nước tự dộng bị hỏng là 0,05 ; xác suất hệ thống báo cháy tự động bị hỏng là 0,03 và xác suất để cả hai hệ thống bị hỏng cùng lúc là 0,01 .
(a) Tính xác suất để hệ thống báo cháy tự dộng bị hỏng còn hệ thống phun nước tự động vẫn hoạt động bình thường.
(b) Tính xác suất để có ít nhất một hệ thống hoạt động bình thường.
(c) Biết hệ thống phun nước tự động bị hỏng. Tính xác suất để hệ thống báo cháy tự dộng hoạt động bình thường.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2021-3-2', 'MI2021-3', 'medium', "Câu 2. (2,5 điểm) Có hai kiện hàng. Kiện thứ nhất có 4 sản phẩm tốt và 3 sản phẩm xấu. Kiện thứ hai có 2 sản phẩm tốt và 3 sản phẩm xấu. Lấy ngẫu nhiên từ kiện thứ nhất ra 2 sản phẩm và từ kiện thứ hai ra 1 sản phẩm. Gọi $X$ là biến ngẫu nhiên chỉ số sản phẩm tốt trong 3 sản phẩm lấy ra.
(a) Hãy lập bảng phân phối xác suât của $X$.
(b) Tính kỳ vọng và phương sai của biến ngẫu nhiên $Y=1-2 X$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2021-4-2', 'MI2021-4', 'easy', "Câu 3. (2,0 điểm) Giả sử trọng lượng tạp chất (đơn vị: gam) trong một sản phẩm là biến ngẫu nhiên $Z$ có phân phối chuẩn. Một mẫu ngẫu nhiên gồm 100 sản phẩm dược tiến hành kiểm tra và thấy lượng tạp chất như sau:
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline$Z$ (gam) & {$[16-17)$} & {$[17-18)$} & {$[18-19)$} & $(19-20)$ & {$[20-21)$} & {$[21-22)$} \\
\hline Số sản phầm & 6 & 10 & 24 & 30 & 18 & 12 \\
\hline
\end{tabular}
(a) Tìm khoảng tin cậy cho trọng lượng tạp chất trung bình của sản phẩm nói trên với độ tin cậy $95 \%$.
(b) Một sản phẩm có trọng lượng tạp chất từ 20 gam trở lên thì sẽ bị loại. Hãy tìm khoảng tin cậy cho tỷ lệ sản phẩm bị loại với độ tin cậy $95 \%$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2021-5-2', 'MI2021-5', 'hard', "Câu 4. (3,0 điểm) Khảo sát về việc tham gia các môn thể thao tại một trường học người ta thấy, trong số 300 học sinh nam và 400 học sinh nữ được khảo sát có 66 học sinh nam và 91 học sinh nữ chơi ít nhất một môn thể thao.
(a) Với mức ý nghĩa $1 \%$, có thể cho rằng tỷ lệ học sinh nam chơi ít nhất một môn thể thao là thấp hơn tỷ lệ này ở học sinh nữ hay không?
(b) Với mức ý nghîa $1 \%$, có thể cho rằng tỷ lệ học sinh nam trong thành phố có chơi ít nhất một môn thể thao là $20 \%$ hay không?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2023E-1-1', 'MI2023E-1', 'easy', "Bài 1: (1,5 điểm) Giả sử các ""hộp đen"" của máy bay được sản xuất bởi 3 công ty: AirCorp, BigSkies và CharterUS - với tỷ lệ lần lượt là $55 \%, 25 \%$ và $20 \%$. Biết rằng tỷ lệ hộp đen bị lỗi do AirCorp, BigSkies và CharterUS sản xuất lần lượt là $4 \%, 6 \%$ và $9 \%$. Một hộp đen được chọn ngẫu nhiên. Biết rằng nó được phát hiện là bị lỗi, hãy tính xác suất nó do công ty AirCorp sản xuất.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2023E-2-1', 'MI2023E-2', 'medium', "Bài 2: (2,0 điểm) Cho ( $\mathrm{X}, \mathrm{Y}$ ) là véctơ ngẫu nhiên liên tục với hàm khối xác suất đồng thời cho bởi như sau:

$$
f(x, y)=\left\{\begin{array}{l}
\frac{1}{18} x y \text { nếu } x=1 ; 2 ; 3 \text { và } y=1 ; 2 \\
0 \text { nếu trái lại. }
\end{array}\right.
$$


Hãy tính hệ số tương quan giữa X và Y . Hai biến X và Y có độc lập không?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2023E-3-1', 'MI2023E-3', 'medium', "Bài 3: (2,0 điểm) Các công ty bảo hiểm thường quan tâm đến tỷ lệ phần trăm người lái xe luôn thắt dây an toàn trước khi lái xe. Họ khảo sát ngẫu nhiên 400 tài xế và phát hiện ra rằng 320 người khẳng định họ luôn thắt dây an toàn.
a) Hãy tìm ươc lượng điểm của tỷ lệ ( $p$ ) các lái xe luôn thắt dây an toàn bằng phương pháp ước lượng hợp lý cực đại.
b) Tìm khoảng ước lượng đối xứng cho tỷ lệ $p$ với độ tin cậy $90 \%$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2023E-4-1', 'MI2023E-4', 'easy', "Bài 4: (2,0 điểm) Hàm lượng oxy hòa tan trong nước sông được đo đề xác định xem có đủ oxy trong nước để hỗ trợ đời sống thủy sinh hay không. Một thanh tra môi trường nghi ngờ rằng một cộng đồng ven sông đang thải một lượng nước thải đã qua xừ lý vào sông. Ông đã lấy ngẫu nhiên 10 mẫu nước sông ở vị trí phía trên thị trấn và 10 mẫu khác ở phía dưới thị trấn. Chỉ số oxy hòa tan (tính bằng phần triệu) được ghi lại như sau:

Phía dưới: 5,0; 4,7; 4,9; 4,8; 4,9; 4,8; 4,7; 5,0; 4,8; 4,8
Phía trên: 4,$8 ; 5,2 ; 5,0 ; 4,9 ; 5,1 ; 5,1 ; 4,9 ; 4,9 ; 5,4 ; 5,0$
Dữ liệu có cung cấp đủ bằng chứng để chỉ ra rằng hàm lượng oxy trung bình bên dưới thị trấn thấp hơn hàm lượng oxy trung bình ở phía trên thị trấn ở mức ý nghĩa $5 \%$ hay không? Giả sử hàm lượng oxy của nước sông bên dưới và bên trên thị trấn có phân phối chuẩn với phương sai bằng nhau.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2023E-5-1', 'MI2023E-5', 'hard', "Bài 5: (2,5 điểm) Một nghiên cứu về mối quan hệ giữa lượng đường chuyển hóa $(Y)$ trong một quy trình nhất định ở các mức nhiệt độ khác nhau $(X)$. Dữ liệu được mã hóa và ghi lại như sau:
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|}
\hline$X$ & 1,0 & 1,1 & 1,2 & 1,3 & 1,4 & 1,5 & 1,6 & 1,7 & 1,8 & 1,9 \\
\hline$Y$ & 8,1 & 7,8 & 8,5 & 9,8 & 9,5 & 8,9 & 8,6 & 10,2 & 9,3 & 9,2 \\
\hline
\end{tabular}
a) Tìm phương trình đường hồi quy thực nghiệm của Y theo X .
b) Hãy kiểm định về hệ số góc của đường hồi quy để xem có mối quan hệ tuyến tính dương giữa $Y$ và X ở mức ý nghĩa $5 \%$ hay không.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2023E-1-2', 'MI2023E-1', 'easy', "Bài 1: (1,5 điểm) Giả sử các ""hộp đen"" của máy bay được sản xuất bởi 3 công ty: AirCorp, BigSkies và CharterUS - với tỷ lệ lần lượt là $45 \%, 25 \%$ và $30 \%$. Biết rằng tỷ lệ hộp đen bị lỗi do AirCorp, BigSkies và CharterUS sản xuất lần lượt là $4 \%, 6 \%$ và $8 \%$. Một hộp đen được chọn ngẫu nhiên. Biết rằng nó được phát hiện là bị lỗi, hãy tính xác suất nó do công ty BigSkies sản xuất.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2023E-2-2', 'MI2023E-2', 'medium', "Bài 2: (2.0 điểm) Cho ( $\mathrm{X}, \mathrm{Y}$ ) là véctơ ngẫu nhiên liên tục với hàm khối xác suất đồng thời cho bởi nhur sau:

$$
f(x, y)=\left\{\begin{array}{l}
\frac{1}{18} x y \text { nếu } x=1 ; 2 \text { và } y=1 ; 2 ; 3 \\
0 \text { nếu trái lại. }
\end{array}\right.
$$


Hãy tính hệ số tương quan giữa $X$ và $Y$. Hai biến $X$ và $Y$ có độc lập không?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2023E-3-2', 'MI2023E-3', 'medium', "Bài 3: (2,0 điểm) Các công ty bảo hiểm thường quan tâm đến tỷ lệ phần trăm người lái xe luôn thắt dây an toàn trước khi lái xe. Họ khảo sát ngẫu nhiên 500 tài xế và phát hiện ra rằng 420 người khẳng định họ luôn thắt dây an toàn.
a) Hãy tìm ước lượng điểm của tỷ lệ (p) các lái xe luôn thắt dây an toàn bằng phương pháp ước lượng hợp lý cực đại.
b) Tìm khoảng ước lượng đối xứng cho tỷ lệ $p$ với độ tin cậy $95 \%$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2023E-4-2', 'MI2023E-4', 'easy', "Bài 4: (2,0 điểm) Hàm lượng oxy hòa tan trong nước sông được đo để xác định xem có đủ oxy trong nước để hỗ trợ đời sống thủy sinh hay không. Một thanh tra môi trường nghi ngờ rằng một cộng đồng ven sông đang thải một lượng nước thải đã qua xử lý vào sông. Ông đã lấy ngẫu nhiên 10 mẫu nước sông ở vị trí phía trên thị trấn và 10 mẫu khác ở phía dưởi thị trấn. Chỉ số oxy hòa tan (tính bằng phần triệu) được ghi lại như sau:

Phía dưới: 5,$1 ; 4,8 ; 5,0 ; 4,9 ; 5,0 ; 4,9 ; 4,8 ; 5,1 ; 4,9 ; 4,9$
Phía trên: 4,$9 ; 5,3 ; 5,1 ; 5,0 ; 5,2 ; 5,2 ; 5,0 ; 5,0 ; 5,5 ; 5,1$
Dữ liệu có cung cấp đủ bằng chứng để chỉ ra rằng hàm lượng oxy trung bình bên dưới thị trấn thấp hơn hàm lượng oxy trung bình ở phía trên thị trấn ở mức ý nghĩa $5 \%$ hay không? Giả sử hàm lượng oxy của nước sông bên dưới và bên trên thị trấn có phân phối chuẩn với phương sai bằng nhau.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2023E-5-2', 'MI2023E-5', 'hard', "Bài 5: (2,5 điểm) Một nghiên cứu về mối quan hệ giữa lượng đường chuyển hóa $(Y)$ trong một quy trình nhất định ở các mức nhiệt độ khác nhau $(X)$. Dữ liệu được mã hóa và ghi lại như sau:
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|}
\hline$X$ & 1,1 & 1,2 & 1,3 & 1,4 & 1,5 & 1,6 & 1,7 & 1,8 & 1,9 & 2,0 \\
\hline$Y$ & 8,0 & 7,7 & 8,4 & 9,7 & 9,4 & 8,8 & 8,5 & 10,1 & 9,2 & 9,1 \\
\hline
\end{tabular}
a) Tìm phương trình đường hồi quy thực nghiệm của Y theo X .
b) Hãy kiểm định về hệ số góc của đường hồi quy để xem có mối quan hệ tuyến tính dương giữa Y và $X$ ở mức ý nghĩa $5 \%$ hay không.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2034-1-1', 'MI2034-1', 'easy', "Bài 1: (2,0 điểm) Giả sử các ""hộp đen"" của máy bay được sản xuất bởi 3 công ty: AirCorp, BigSkies và CharterUS - với tỷ lệ lần lượt là $55 \%, 25 \%$ và $20 \%$. Biết rằng tỷ lệ hộp đen bị lỗi do AirCorp, BigSkies và CharterUS sản xuất lần lượt là $4 \%, 6 \%$ và $9 \%$. Một hộp đen được chọn ngẫu nhiên. Biết rằng nó được phát hiện là bị lỗi, nhiều khả năng nhất nó do công ty nào sản xuất? Tại sao?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2034-2-1', 'MI2034-2', 'medium', "Bài 2: (2,0 điểm) Cho biến ngẫu nhiên $X$ có phân phối mũ với hàm mật độ xác suất như sau:

$$
f(x)=\left\{\begin{array}{l}
2 e^{-2 x} \text { nếu } x>0, \\
0 \text { nếu trái lại. }
\end{array}\right.
$$


Xét biến ngẫu nhiên $Y=-2 X+1$.
a) Hãy tìm hàm phân phối xác suất của $Y$.
b) Hãy tính $E(Y)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2034-3-1', 'MI2034-3', 'medium', "Bài 3: (2,0 điểm) Cho ( $\mathrm{X}, \mathrm{Y}$ ) là véctơ ngẫu nhiên liên tục với hàm mật độ xác suất đồng thời cho bời như sau:

$$
f(x, y)=\left\{\begin{array}{l}
24 x y \text { nếu } x>0, y>0 \text { và } x+y<1, \\
0 \text { nếu trái lại. }
\end{array}\right.
$$


Hãy tính hệ số tương quan giữa X và Y . Hai biến X và Y có độc lập không?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2034-4-1', 'MI2034-4', 'easy', "Bài 4: (2,0 điểm) Các công ty bảo hiểm thường quan tâm đến tỷ lệ phần trăm người laí xe luôn thắt dây an toàn trước khi lái xe. Họ khảo sát ngẫu nhiên 400 tài xế và phát hiện ra rằng 320 người khẳng định họ luôn thắt dây an toàn.
a) Hãy tìm khoảng ước lượng đối xứng cho tỷ lệ (p) các lái xe luôn thắt dây an toàn với độ tin cậy $90 \%$.
b) Nếu sai số của khoảng ước lượng cho tỷ lệ $p$ tăng $1 \%$ thì độ tin cậy tăng hay giảm bao nhiêu?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2034-5-1', 'MI2034-5', 'hard', "Bài 5: (2,0 điẻm) Hàm lượng oxy hòa tan trong nước sông được đo để xác định xem có đủ oxy trong nước để hỗ trợ đời sống thủy sinh hay không. Một thanh tra môi trường nghi ngờ rằng một cộng đồng ven sông đang thải một lượng nước thải đã qua xừ lý vào sông. Ông đã lấy ngẫu nhiên 10 mẫu nước sông ở vị trí phía trên thị trấn và 10 mẫu khác ở phía dưới thị trấn. Chỉ số oxy hòa tan (tính bằng phần triệu) được ghi lại như sau:

Phía dưới: 5,$0 ; 4,7 ; 4,9 ; 4,8 ; 4,9 ; 4,8 ; 4,7 ; 5,0 ; 4,8 ; 4,8$
Phía trên: 4,$8 ; 5,2 ; 5,0 ; 4,9 ; 5,1 ; 5,1 ; 4,9 ; 4,9 ; 5,4 ; 5,0$
Dữ liệu có cung cấp đủ bằng chứng để chỉ ra rằng hàm lượng oxy trung bình bên dưới thị trấn thấp hơn hàm lượng oxy trung bình ở phía trên thị trấn ở mức ý nghĩa $5 \%$ hay không? Giả sử hàm lượng oxy của nước sông bên dưới và bên trên thị trấn có phân phối chuẩn với phương sai bằng nhau.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2034-1-2', 'MI2034-1', 'easy', "Bài 1: (2,0 điểm) Giả sử các ""hộp đen"" của máy bay được sản xuất bởi 3 công ty: AirCorp, BigSkies và CharterUS - với tỷ lệ lần lượt là $45 \% ; 25 \%$ và $30 \%$. Biết rằng tỷ lệ hộp đen bị lỗi do AirCorp, BigSkies và CharterUS sản xuất lần lượt là $4 \%, 6 \%$ và $8 \%$. Một hộp đen được chọn ngẫu nhiên. Biết rằng nó được phát hiện là bị lỗi, nhiều khả năng nhất nó do công ty nào sản xuât? Tại sao?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2034-2-2', 'MI2034-2', 'medium', "Bài 2: (2,0 điểm) Cho biến ngẫu nhiên $X$ có phân phối mũ với hàm mật độ xác suất như sau:

$$
f(x)=\left\{\begin{array}{l}
3 e^{-3 x} \text { nếu } x>0 \\
0 \text { nếu trái lại. }
\end{array}\right.
$$


Xét biến ngẫu nhiên $Y=-3 X+1$.
a) Hãy tìm hàm phân phối xác suất của $Y$.
b) Hãy tính $E(Y)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2034-3-2', 'MI2034-3', 'medium', "Bài 3: (2,0 điểm) Cho (X, Y) là véctơ ngẫu nhiên liên tục với hàm mật độ xác suất đồng thời cho bởi như sau:

$$
f(x, y)=\left\{\begin{array}{l}
\frac{3}{2} x y \text { nếu } x>0, y>0 \text { và } x+y<2 \\
0 \text { nếu trái lại. }
\end{array}\right.
$$


Hãy tính hệ số tương quan giữa X và Y . Hai biến X và Y có độc lập không?:", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2034-4-2', 'MI2034-4', 'easy', "Bài 4: (2,0 đièm) Các công ty bảo hiểm thường quan tâm đến tỷ lệ phần trăm người lái xe luôn thắt dây an toàn trước khi lái xe. Họ khảo sát ngẫu nhiên 500 tài xế và phát hiện ra rằng 420 người khẳng định họ luôn thắt dây an toàn.
a) Hãy tìm khoảng ước lượng đối xứng cho tỷ lệ (p) các lái xe luôn thắt dây an toàn với độ tin cậy $95 \%$.
b) Nếu sai số của khoảng ước lượng cho tỷ lệ p giảm $1 \%$ thì độ tin cậy tăng hay giàm bao nhiêu?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2034-5-2', 'MI2034-5', 'hard', "Bài 5: (2,0 điểm) Hàm lượng oxy hòa tan trong nước sông được đo để xác định xem có đủ oxy trong nước để hỗ trợ đời sống thủy sinh hay không. Một thanh tra môi trường nghi ngờ rằng một cộng đồng ven sông đang thải một lượng nước thải đã qua xử lý vào sông. Ông đã lấy ngẫu nhiên 10 mẫu nước sông ở vị trí phía trên thị trấn và 10 mẫu khác ở phía dưới thị trấn. Chi số oxy hòa tan (tính bằng phần triệu) được ghi lại nhu sau:

Phía dưới: 5,$1 ; 4,8 ; 5,0 ; 4,9 ; 5,0 ; 4,9 ; 4,8 ; 5,1 ; 4,9 ; 4,9$
Phía trên: 4,$9 ; 5,3 ; 5,1 ; 5,0 ; 5,2 ; 5,2 ; 5,0 ; 5,0 ; 5,5 ; 5,1$
Dữ liệu có cung cấp đủ bằng chứng để chỉ ra rằng hàm lượng oxy trung bình bên dưới thị trấn thấp hơn hàm lượng oxy trung bình ở phía trên thị trấn ở mức ý nghĩa $5 \%$ hay không? Giả sử hàm lượng oxy của nước sông bên dưới và bên trên thị trấn có phân phối chuẩn với phương sai bằng nhau.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2110-2-1', 'MI2110-2', 'medium', "Câu 1. Cho hệ phương trình:

$$
\left\{\begin{aligned}
9 x_1+3 x_2+48 x_3 & =45 \\
12 x_1+x_2+2 x_3 & =-8 \\
-2 x_1+28 x_2-4 x_3 & =54
\end{aligned}\right.
$$

a) Giải hệ phương trình bằng phương pháp Gauss-Jordan.
b) Sử dụng phương pháp lặp đơn để tính đến nghiệm gần đúng $X^{(2)}$ với xấp xỉ đầu $X^{(0)}=(0,2 ; 0,65 ; 0,67)^T$ và dánh giá sai số của nghiệm gần đúng thu được theo công thức sai số qua hai xấp xỉ liên tiếp, sử dụng chuẩn hàng.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2110-3-1', 'MI2110-3', 'medium', "Câu 2. Cho bảng dữ liệu sau:
\begin{tabular}{|c|c|c|c|c|}
\hline$x$ & 2 & 2,1 & 2,3 & 2,4 \\
\hline$y$ & 13,2918 & 14,0274 & 15,5227 & 16,2876 \\
\hline
\end{tabular}
a) Tính gần đúng $y(2,05)$ sử dụng đa thức nội suy Newton tiến.
b) Tìm hàm thực nghiệm có dạng $y=a x^2+b \sin x$ ứng với bảng số trên.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2110-4-1', 'MI2110-4', 'easy', "Câu 3. Tính gần đúng tích phân $I=\int_{-0,5}^{0,5} \frac{\cos ^3 x}{\sqrt{1+\cos 2 x}} d x$ bằng công thức Simpson với bưới lưới $h=0,125$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2110-5-1', 'MI2110-5', 'hard', "Câu 4.
a) Sử dụng ngôn ngữ lập trình MATLAB để viết hàm Lagrange cho phương pháp nội suy Lagrange với dữ liệu dầu vào gồm $x, y$ là các vector nhận giá trị thực cùng kích thước, đầu ra là vector $p$ lưu hệ số của đa thức nội suy tương ưng với bộ dữ liệu $\{x, y\}$.
b) Viết các câu lệnh ở cửa sổ lệnh sử dụng hàm Lagrange xây dựng ở câu a) để tìm đa thức nội suy cho hàm dưới dạng bảng số ở câu 2 .
c) Có thể lựa chọn những kiểu dữ liệu phù hợp nào trong MATLAB để lập trình phương pháp nội suy Lagrange? Kiểu dữ liệu nào là tối ưu nhất về thời gian và tốc dộ tính toán? Giải thích?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2110-2-2', 'MI2110-2', 'medium', "Câu 1. Cho hệ phương trình:

$$
\left\{\begin{aligned}
-3 x_1+42 x_2-6 x_3 & =81 \\
12 x_1+x_2+2 x_3 & =-8 \\
6 x_1+2 x_2+32 x_3 & =30
\end{aligned}\right.
$$

a) Giải hệ phương trình bằng phương pháp Gauss-Jordan.
b) Sử dụng phương pháp lặp đơn để tính đến nghiệm gần đúng $X^{(2)}$ với xấp xỉ đầu $X^{(0)}=(0,2 ; 0,65 ; 0,67)^T$ và đánh giá sai số của nghiệm gần đúng thu được theo công thức sai số qua hai xấp xỉ liên tiếp, sử dụng chuẩn hàng.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2110-3-2', 'MI2110-3', 'medium', "Câu 2. Cho bảng dữ liệu sau:
\begin{tabular}{|c|c|c|c|c|}
\hline$x$ & 2,3 & 2,4 & 2,7 & 2,8 \\
\hline$y$ & 22,2726 & 24,2240 & 30,7256 & 33,1129 \\
\hline
\end{tabular}
a) Tínin yần đúng $y(2,85)$ sử dụng da thức nội suy Newton lùi.
b) Tìm hàm thực nghiệm có dạng $y=a \cos x-b x^2$ ưng với bảng số trên.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2110-4-2', 'MI2110-4', 'easy', "Câu 3. Tính gần đúng tích phân $I=\int_{-0,5}^{0,5} \frac{\cos ^2 x}{\sqrt{1+\sin 3 x}} d x$ bằng công thức hình thang với cách chia $[-0,5 ; 0,5]$ thành 8 doạn bằng nhau.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI2110-5-2', 'MI2110-5', 'hard', "Câu 4.
a) Sử dụng ngôn ngữ lập trình MATLAB dể viết hàm Lagrange cho phương pháp nội suy Lagrange với dữ liệu dầu vào gồm $x, y$ là các vector nhận giá trị thực cùng kích thước, đầu ra là vector $p$ lưu hệ số của đa thức nội suy tương ứng với bộ dữ liệu $\{x, y\}$.
b) Viết các câu lệnh ở cửa sổ lệnh sử dụng hàm Lagrange xây dựng ở câu a) đề tìm đa thức nội suy cho hàm dưới dạng bảng số ở câu 2 .
c) Có thể lựa chọn những kiểu dữ liệu phù hợp nào trong MATLAB để lập trình phương pháp nội suy Lagrange? Kiểu dữ liệu nào là tối ưu nhất về thời gian và tốc độ tính toán? Giải thích?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI3180-2-1', 'MI3180-2', 'medium', "Câu 1: (2 điểm) Tại một nhà máy, hệ thống phun nước tự động được liên kết với hệ thống báo động hoả hoạn. Xác suất hệ thống phun nược bị hỏng là 0,05 . Xác suât hệ thống báo động hoả hoạn bị hỏng là 0,1 . Xác suất để cả hai hệ thống cùng hỏng là 0,01 .
(a) Tính xác suất có ít nhất một hệ thống không bị hỏng.
(b) Biết hệ thống báo động hoả hoạn không bị hỏng, tính xác suât hệ thống phun nược bị hỏng.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI3180-3-1', 'MI3180-3', 'medium', "Câu 2: (2 điểm) GIả sử biến ngầu nhiên liên tục $X$ có hàm mật độ xác suất:

$$
f_X(x)= \begin{cases}4 e^{-4 x}, & \text { nếu } x \geq 0 \\ 0, & \text { nếu } x<0\end{cases}
$$


Định nghĩa biến ngẵu nhiên $Y=[X]$ là số nguyên lơn nhất không vượt quá $X$ (nghĩa là $[x]=0$ nếu $0 \leq x<1,[x]=1$ néu $1 \leq x<2 \ldots)$.
(a) Tinh $P(Y=1)$.
(b) Tinh $E(2 Y-1)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI3180-4-1', 'MI3180-4', 'easy', "Câu 3: (3 điểm) Một kỹ sư cho biết trọng lượng tạp chất trong 1 sản phẩm tuân theo luật phân phối chuẩn. Một mẫu ngău nhiên gôm 11 sản phẩm được tiến hành kiểm tra và thấy lượng tạp chất như sau (dơn vi tính là gam):
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|}
\hline 16,5 & 15,1, & 12,7 & 14,9 & 13,5 & 15,3 & 14,1 & 17,3 & 15,4 & 13,7 & 17,6 \\
\hline
\end{tabular}
(a) Tìm khoảng tin cậy cho trọng lượng trung bình tạp chất của sản phảm với dộ tin cậy $95 \%$.
(b) Với mức ý nghĩa $5 \%$ có thể kết luận được trọng lượng trung bình tạp chất của sản phẩm lớn hơn 14 gam hay không?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI3180-5-1', 'MI3180-5', 'hard', "Câu 4: (3 điểm) Dùng phương pháp quy hoạch trực giao cấp một xây dựng mô hình biểu diển mối quan hệ giưa $Y$ và các biến đằu vào $Z_1, Z_2$ biết: $Y=\beta_0+\beta_1 X_1+\beta_2 X_2+\xi$, (1) vời

$$
\left\{\begin{array}{l}
4 \leq Z_1 \leq 8 \\
14 \leq Z_2 \leq 22
\end{array} \quad, X_i=\frac{Z_i-Z_i^0}{\Delta Z_i}, i=1,2\right.
$$

(a) Hoàn thiện bảng thực nghiệm sau:
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline$N^0$ & $Z_1$ & $Z_2$ & $X_0$ & $X_1$ & $X_2$ & Y \\
\hline 1 & 4 & 14 & + & & & 14,8 \\
\hline 2 & 8 & 14 & + & & & 15,7 \\
\hline 3 & 4 & 22 & + & & & 16,2 \\
\hline 4 & 8 & 22 & + & & & 16,8 \\
\hline
\end{tabular}

Làm $n_0=3$ thí nghiệm tại tâm có $y_0^1=15,7 ; y_0^2=15,8 ; y_0^3=15,9$.
(b) Xác định các hệ số hồi quy của phương trình (1).
(c) Kiêm định sự có nghĩa của các hệ số hồi quy với mức ý nghia 0,05 .
(d) Kiếm định sự phù hợp của mô hình với mức ý nghĩa 0,05 .", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI3180-2-2', 'MI3180-2', 'medium', "Câu 1: (2 điểm) Tại một nhà máy, hệ thống phun nược tự động được liên kết vởi hệ thống báo động hoả hoạn. Xác suất hệ thống phun nước bị hỏng là 0,1 . Xác suất hệ thống báo động hoả hoạn bị hỏng là 0,05 . Xác suất để cả hai hệ thống cùng hỏng là 0,01 .
(a) Tính xác suắt có it nhất một hệ thống không bị hỏng.
(b) Biết hệ thống báo động hoả hoạn không bị hỏng, tính xác suất hệ thống phun nước bị hỏng.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI3180-3-2', 'MI3180-3', 'medium', "Câu 2: (2 điểm) Glả sử biến ngẫu nhiên liên tục $X$ có hàm mật độ xác suât:

$$
f_X(x)= \begin{cases}2 e^{-2 x}, & \text { nếu } x \geq 0 \\ 0, & \text { nếu } x<0\end{cases}
$$


Định nghĩa biến ngẵu nhiên $Y=[X]$ là số nguyên lớn nhất khỏng vượt quá $X$ (nghĩa là $[x]=0$ nếu $0 \leq x<1,[x]=1$ nếu $1 \leq x<2 \ldots$ ).
(a) Tính $P(Y=0)$.
(b) Tinh $E(2 Y+1)$.", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI3180-4-2', 'MI3180-4', 'easy', "Câu 3: (3 điểm) Một kỹ sư cho biết trọng lượng tạp chất trong 1 sản phẩm tuân theo luặt phân phối chuẳn. Một mẫu ngãu nhiên gôm 11 sản phẩm được tiến hành kiểm tra và thấy lượng tạp chất như sau (dơn vị tính là gam):
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|}
\hline 15,5 & 14,1, & 11,7 & 13,9 & 12,5 & 14,3 & 13,1 & 16,3 & 14,4 & 12,7 & 16,6 \\
\hline
\end{tabular}
(a) Tìm khoảng tin cây cho trọng lượng trung bình tạp chất của sản phảm với dô tin cậy $90 \%$.
(b) Vôi mức ý nghīa $5 \%$, có thể kết luận được trọng lượng trung bình tạp chất của sản phẩm lôn hơn 13 gam hay không?", '2025-01-01 00:00:00');
INSERT INTO Questions (question_id, chapter_id, difficulty, tex, created_at) VALUES
('MI3180-5-2', 'MI3180-5', 'hard', "Câu 4: (3 điểm) Dùng phương pháp quy hoạch trực giao cáp một xây dựng mô hình biếu diến mối quan hệ giữa $Y$ và các biến đầu vào $Z_1, Z_2$ biết: $Y=\beta_0+\beta_1 X_1+\beta_2 X_2+\xi$, (1) vối

$$
\left\{\begin{array}{l}
6 \leq Z_1 \leq 8 \\
14 \leq Z_2 \leq 20
\end{array} \quad, X_i=\frac{Z_i-Z_i^0}{\Delta Z_i}, i=1,2\right.
$$

(a) Hoàn thiện bảng thực nghiệm sau:
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline$N^0$ & $Z_1$ & $Z_2$ & $X_0$ & $X_1$ & $X_2$ & Y \\
\hline 1 & 6 & 14 & + & & & 15,8 \\
\hline 2 & 8 & 14 & + & & & 16,7 \\
\hline 3 & 6 & 20 & + & & & 17,2 \\
\hline 4 & 8 & 20 & + & & & 17,8 \\
\hline
\end{tabular}

Làm $n_0=3$ thí nghiệm tại tâm có $y_0^1=16,7 ; y_0^2=16,8 ; y_0^3=16,9$.
(b) Xác định các hệ số hồi quy của phương trình (1).
(c) Kiểm định sự có nghỉa của các hệ số hồi quy với mức ý nghĩa 0,05 .
(d) Kiếm định sự phù hợp của mồ hình với mức ý nghỉa 0,05 .", '2025-01-01 00:00:00');

select * from questions;
